@interface SBFloatingDockDefaults
@property (nonatomic, assign) BOOL recentsEnabled;
@end

%hook SBFloatingDockDefaults
-(void)setRecentsEnabled:(BOOL)enabled {
	%orig(NO);
}

-(BOOL)recentsEnabled {
	return NO;
}

-(void)_bindAndRegisterDefaults {
	%orig();
	self.recentsEnabled = NO;
}
%end
