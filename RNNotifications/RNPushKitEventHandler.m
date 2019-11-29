#import "RNPushKitEventHandler.h"
#import "RNNotificationsEventEmitter.h"

@implementation RNPushKitEventHandler

- (void)registeredWithToken:(NSString *)token {
    [RNNotificationsEventEmitter sendEvent:RNPushKitRegistered body:@{@"pushKitToken": token}];
}

- (void)didReceiveIncomingPushWithPayload:(NSDictionary *)payload {
    [RNNotificationsEventEmitter sendEvent:RNPushKitNotificationReceived body:payload];
}

@end
