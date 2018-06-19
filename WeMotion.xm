// See http://iphonedevwiki.net/index.php/Logos

%hook WCDeviceStepObject

- (unsigned int)m7StepCount
{
    // 如果重设置了步数
    NSString *countStr = [WeChatHookDefaults valueForKey:WeChatMotionCountKey];
    
    if(countStr && countStr.length > 0)
    {
        %orig;
        return (unsigned int)[(NSString *)[WeChatHookDefaults valueForKey:WeChatMotionCountKey] integerValue];
    }

    return %orig;
}

%end
