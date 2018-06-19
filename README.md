# WeMotion
iOS修改微信运动步数


利用MonkeyDev和Logos，修改容易快速修改

```
%hook WCDeviceStepObject
 
- (unsigned int)m7StepCount
{
    %orig;
    return 66888;
}
 
%end
```

[Look here](http://shengshui.com/?p=3579)

