//
//  Counter.m
//  NativePOC
//
//  Created by Satyam on 29/12/22.
//

#import <Foundation/Foundation.h>
#import <Foundation/NSDictionary.h>
#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(Counter,NSObject)

RCT_EXTERN_METHOD(increment:
                  (NSDictionary)givenValue
                  callback:(RCTResponseSenderBlock)callback)
RCT_EXTERN_METHOD(decrement:
                  (RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)

@end
