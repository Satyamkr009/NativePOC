//
//  Counter.swift
//  NativePOC
//
//  Created by Satyam on 29/12/22.
//

import Foundation


@objc(Counter)
class Counter : NSObject{
  private var count = 0;

  @objc
  func increment(_ givenValue:NSMutableDictionary, callback:RCTResponseSenderBlock){
//    count=;
    givenValue.setValue("Ajay", forKey: "s");
//    print(count);
    callback([givenValue])
  }

@objc
  static func requiresMainQueueSetup() ->Bool{
    return true;
  }
  
  @objc
  func constantsToExport()-> [String:Any]!{
    return ["initialCount":0];
  }
  
  @objc
  func decrement(_ resolve:RCTPromiseResolveBlock, reject:RCTPromiseRejectBlock){
    if(count==0)
    {
      let error = NSError(domain: "", code: 200, userInfo: nil);
      reject("ERROR_COUNT","count can't be negative",error);
    }
    else
    {
      count-=1;
      resolve(count);
    }
  }
}
