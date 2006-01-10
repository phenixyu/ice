// **********************************************************************
//
// Copyright (c) 2003-2005 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_LICENSE file included in this distribution.
//
// **********************************************************************

#include <Ice/Ice.h>
#include <IceGrid/Admin.h>
#include <TestCommon.h>
#include <Test.h>

using namespace std;
using namespace Test;

void
allTests(const Ice::CommunicatorPtr& communicator)
{
    IceGrid::AdminPrx admin = IceGrid::AdminPrx::checkedCast(communicator->stringToProxy("IceGrid/Admin"));

    cout << "testing on-demand activation... " << flush;
    try
    {
	test(admin->getServerState("server") == IceGrid::Inactive);
	TestIntfPrx obj = TestIntfPrx::checkedCast(communicator->stringToProxy("server"));
	test(admin->getServerState("server") == IceGrid::Active);
	obj->shutdown();
	int nRetry = 0;
	while(admin->getServerState("server") != IceGrid::Inactive && nRetry < 15)
	{
	    IceUtil::ThreadControl::sleep(IceUtil::Time::milliSeconds(500));
	    ++nRetry;
	}
	test(admin->getServerState("server") == IceGrid::Inactive);
    }
    catch(const Ice::LocalException& ex)
    {
	cerr << ex << endl;
	test(false);
    }
    cout << "ok" << endl;

    cout << "testing manual activation... " << flush;
    try
    {
	test(admin->getServerState("server-manual") == IceGrid::Inactive);
	TestIntfPrx obj;
	try
	{
	    obj = TestIntfPrx::checkedCast(communicator->stringToProxy("server-manual"));
	}
	catch(const Ice::NoEndpointException&)
	{
	}
	test(admin->getServerState("server-manual") == IceGrid::Inactive);
	admin->startServer("server-manual");
	test(admin->getServerState("server-manual") == IceGrid::Active);
	obj = TestIntfPrx::checkedCast(communicator->stringToProxy("server-manual"));	
	test(admin->getServerState("server-manual") == IceGrid::Active);
	obj->shutdown();
	int nRetry = 0;
	while(admin->getServerState("server-manual") != IceGrid::Inactive && nRetry < 15)
	{
	    IceUtil::ThreadControl::sleep(IceUtil::Time::milliSeconds(500));
	    ++nRetry;
	}
	test(admin->getServerState("server-manual") == IceGrid::Inactive);
    }
    catch(const Ice::LocalException& ex)
    {
	cerr << ex << endl;
	test(false);
    }
    cout << "ok" << endl;

    cout << "testing always activation... " << flush;
    try
    {
	test(admin->getServerState("server-always") == IceGrid::Active);
	TestIntfPrx obj = TestIntfPrx::checkedCast(communicator->stringToProxy("server-always"));
	admin->stopServer("server-always");
	int nRetry = 0;
	while(admin->getServerState("server-always") != IceGrid::Active && nRetry < 15)
	{
	    IceUtil::ThreadControl::sleep(IceUtil::Time::milliSeconds(500));
	    ++nRetry;
	}
	test(admin->getServerState("server-always") == IceGrid::Active);
	admin->stopServer("server-always");
	nRetry = 0;
	while(admin->getServerState("server-always") != IceGrid::Active && nRetry < 15)
	{
	    IceUtil::ThreadControl::sleep(IceUtil::Time::milliSeconds(500));
	    ++nRetry;
	}
	test(admin->getServerState("server-always") == IceGrid::Active);
    }
    catch(const Ice::LocalException& ex)
    {
	cerr << ex << endl;
	test(false);
    }
    cout << "ok" << endl;

    cout << "testing server disable... " << flush;
    try
    {
	test(admin->getServerState("server") == IceGrid::Inactive);
	admin->enableServer("server", false);
	try
	{
	    communicator->stringToProxy("server")->ice_ping();
	}
	catch(const Ice::NoEndpointException&)
	{
	}
	try
	{
	    admin->startServer("server");
	}
	catch(const IceGrid::ServerStartException&)
	{
	}
	test(admin->getServerState("server") == IceGrid::Inactive);

	test(admin->getServerState("server-manual") == IceGrid::Inactive);
	admin->enableServer("server-manual", false);
	try
	{
	    communicator->stringToProxy("server-manual")->ice_ping();
	}
	catch(const Ice::NoEndpointException&)
	{
	}
	try
	{
	    admin->startServer("server-manual");
	}
	catch(const IceGrid::ServerStartException&)
	{
	}
	test(admin->getServerState("server-manual") == IceGrid::Inactive);

	test(admin->getServerState("server-always") == IceGrid::Active);
	admin->enableServer("server-always", false);
	admin->stopServer("server-always");
	test(admin->getServerState("server-always") == IceGrid::Inactive);
	try
	{
	    communicator->stringToProxy("server-always")->ice_ping();
	}
	catch(const Ice::NoEndpointException&)
	{
	}
	try
	{
	    admin->startServer("server-always");
	}
	catch(const IceGrid::ServerStartException&)
	{
	}
	test(admin->getServerState("server-always") == IceGrid::Inactive);
    }
    catch(const Ice::LocalException& ex)
    {
	cerr << ex << endl;
	test(false);
    }
    cout << "ok" << endl;

    cout << "testing server enable... " << flush;
    try
    {
	test(admin->getServerState("server") == IceGrid::Inactive);
	admin->enableServer("server", true);
	communicator->stringToProxy("server")->ice_ping();
	admin->stopServer("server");
	test(admin->getServerState("server") == IceGrid::Inactive);
	admin->startServer("server");
	test(admin->getServerState("server") == IceGrid::Active);
	admin->stopServer("server");
	test(admin->getServerState("server") == IceGrid::Inactive);

	test(admin->getServerState("server-manual") == IceGrid::Inactive);
	admin->enableServer("server-manual", true);
	try
	{
	    communicator->stringToProxy("server-manual")->ice_ping();
	}
	catch(const Ice::NoEndpointException&)
	{
	}
	test(admin->getServerState("server-manual") == IceGrid::Inactive);
	admin->startServer("server-manual");
	test(admin->getServerState("server-manual") == IceGrid::Active);
	admin->stopServer("server-manual");
	test(admin->getServerState("server-manual") == IceGrid::Inactive);

	test(admin->getServerState("server-always") == IceGrid::Inactive);
	admin->enableServer("server-always", true);
	int nRetry = 0;
	while(admin->getServerState("server-always") != IceGrid::Active && nRetry < 15)
	{
	    IceUtil::ThreadControl::sleep(IceUtil::Time::milliSeconds(500));
	    ++nRetry;
	}
	test(admin->getServerState("server-always") == IceGrid::Active);
	admin->stopServer("server-always");
	try
	{
	    admin->startServer("server-always");
	}
	catch(const IceGrid::ServerStartException&)
	{
	}
	test(admin->getServerState("server-always") == IceGrid::Active);
    }
    catch(const Ice::LocalException& ex)
    {
	cerr << ex << endl;
	test(false);
    }
    cout << "ok" << endl;	

    cout << "testing activation timeout... " << flush;
    try
    {
	test(admin->getServerState("server-activation-timeout") == IceGrid::Inactive);
	try
	{
	    communicator->stringToProxy("server-activation-timeout")->ice_ping();
	}
	catch(const Ice::NoEndpointException&)
	{
	}
	admin->stopServer("server-activation-timeout");
    }
    catch(const Ice::LocalException& ex)
    {
	cerr << ex << endl;
	test(false);
    }
    cout << "ok" << endl;	

    cout << "testing deactivation timeout... " << flush;
    try
    {
	test(admin->getServerState("server-deactivation-timeout") == IceGrid::Inactive);
	communicator->stringToProxy("server-deactivation-timeout")->ice_ping();
	admin->stopServer("server-deactivation-timeout");
    }
    catch(const Ice::LocalException& ex)
    {
	cerr << ex << endl;
	test(false);
    }
    cout << "ok" << endl;	

    cout << "testing permanent disable on failure... " << flush;
    try
    {
	test(admin->getServerState("server1") == IceGrid::Inactive);
	TestIntfPrx obj = TestIntfPrx::checkedCast(communicator->stringToProxy("server1"));
	test(admin->getServerState("server1") == IceGrid::Active);
	obj->fail();
	int nRetry = 0;
	while(admin->getServerState("server1") != IceGrid::Inactive && nRetry < 15)
	{
	    IceUtil::ThreadControl::sleep(IceUtil::Time::milliSeconds(500));
	    ++nRetry;
	}
	test(admin->getServerState("server1") == IceGrid::Inactive);	
	try
	{
	    obj->ice_ping();    
	}
	catch(const Ice::NoEndpointException&)
	{
	}	
	test(!admin->isServerEnabled("server1"));

	test(admin->getServerState("server1-manual") == IceGrid::Inactive);
	admin->startServer("server1-manual");
	test(admin->getServerState("server1-manual") == IceGrid::Active);
	obj = TestIntfPrx::checkedCast(communicator->stringToProxy("server1-manual"));	
	test(admin->getServerState("server1-manual") == IceGrid::Active);
	obj->fail();
	nRetry = 0;
	while(admin->getServerState("server1-manual") != IceGrid::Inactive && nRetry < 15)
	{
	    IceUtil::ThreadControl::sleep(IceUtil::Time::milliSeconds(500));
	    ++nRetry;
	}
	test(admin->getServerState("server1-manual") == IceGrid::Inactive);
	test(!admin->isServerEnabled("server1-manual"));

	test(admin->getServerState("server1-always") == IceGrid::Active);
	obj = TestIntfPrx::checkedCast(communicator->stringToProxy("server1-always"));
	obj->fail();
	nRetry = 0;
	while(admin->getServerState("server1-always") != IceGrid::Inactive && nRetry < 15)
	{
	    IceUtil::ThreadControl::sleep(IceUtil::Time::milliSeconds(500));
	    ++nRetry;
	}
	test(admin->getServerState("server1-always") == IceGrid::Inactive);
	test(!admin->isServerEnabled("server1-always"));
    }
    catch(const Ice::LocalException& ex)
    {
	cerr << ex << endl;
	test(false);
    }
    cout << "ok" << endl;	


    cout << "testing temporary disable on failure... " << flush;
    try
    {
	test(admin->getServerState("server2") == IceGrid::Inactive);
	TestIntfPrx obj = TestIntfPrx::checkedCast(communicator->stringToProxy("server2"));
	test(admin->getServerState("server2") == IceGrid::Active);
	obj->fail();
	int nRetry = 0;
	while(admin->getServerState("server2") != IceGrid::Inactive && nRetry < 15)
	{
	    IceUtil::ThreadControl::sleep(IceUtil::Time::milliSeconds(500));
	    ++nRetry;
	}
	test(admin->getServerState("server2") == IceGrid::Inactive);
	try
	{
	    obj->ice_ping();    
	}
	catch(const Ice::NoEndpointException&)
	{
	}	
	test(!admin->isServerEnabled("server2"));
	nRetry = 0;
	while(!admin->isServerEnabled("server2") && nRetry < 15)
	{
	    IceUtil::ThreadControl::sleep(IceUtil::Time::milliSeconds(500));
	    ++nRetry;
	    try
	    {
		obj->ice_ping();    
	    }
	    catch(const Ice::NoEndpointException&)
	    {
	    }
	}
	test(admin->isServerEnabled("server2") && admin->getServerState("server2") == IceGrid::Active);
	obj->ice_ping();
	admin->stopServer("server2");

	test(admin->getServerState("server2-manual") == IceGrid::Inactive);
	admin->startServer("server2-manual");
	test(admin->getServerState("server2-manual") == IceGrid::Active);
	obj = TestIntfPrx::checkedCast(communicator->stringToProxy("server2-manual"));
	obj->fail();
	nRetry = 0;
	while(admin->getServerState("server2-manual") != IceGrid::Inactive && nRetry < 15)
	{
	    IceUtil::ThreadControl::sleep(IceUtil::Time::milliSeconds(500));
	    ++nRetry;
	}
	test(admin->getServerState("server2-manual") == IceGrid::Inactive);
	test(!admin->isServerEnabled("server2-manual"));
	admin->startServer("server2-manual");
	test(admin->isServerEnabled("server2-manual"));
	test(admin->getServerState("server2-manual") == IceGrid::Active);
	admin->stopServer("server2-manual");

	test(admin->getServerState("server2-always") == IceGrid::Active);
	obj = TestIntfPrx::checkedCast(communicator->stringToProxy("server2-always"));
	obj->fail();
	nRetry = 0;
	while(admin->getServerState("server2-always") != IceGrid::Inactive && nRetry < 15)
	{
	    IceUtil::ThreadControl::sleep(IceUtil::Time::milliSeconds(500));
	    ++nRetry;
	}
	test(admin->getServerState("server2-always") == IceGrid::Inactive);
	test(!admin->isServerEnabled("server2-always"));
	nRetry = 0;
	while((!admin->isServerEnabled("server2-always") ||
	       admin->getServerState("server2-always") != IceGrid::Active) &&
	      nRetry < 15)
	{
	    IceUtil::ThreadControl::sleep(IceUtil::Time::milliSeconds(500));
	    ++nRetry;
	}
	test(admin->isServerEnabled("server2-always") && admin->getServerState("server2-always") == IceGrid::Active);
	obj->ice_ping();
    }
    catch(const Ice::LocalException& ex)
    {
	cerr << ex << endl;
	test(false);
    }
    cout << "ok" << endl;	
}

