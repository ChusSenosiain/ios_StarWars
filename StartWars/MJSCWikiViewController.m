//
//  MJSCWikiViewController.m
//  StartWars
//
//  Created by María Jesús Senosiain Caamiña on 07/02/15.
//  Copyright (c) 2015 María Jesús Senosiain Caamiña. All rights reserved.
//

#import "MJSCWikiViewController.h"
#import "MJSCStarsWarsUniverseViewController.h"

@interface MJSCWikiViewController ()

@end

@implementation MJSCWikiViewController

-(id) initWithModel:(MJSCStarsWarsCharacter*) model {
    
    if (self = [super initWithNibName:nil bundle:nil]) {
        _model = model;
        self.title = @"Wikipedia";
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Eliminamos comporramiento por defecto de IOS?
    self.edgesForExtendedLayout = UIRectEdgeNone;

    // Le dedimos que el delegado del browser es la clase
    self.browser.delegate = self;
    
    // Sincronizar modelo -> vista
    
    [self syncViewWithModel];
    
    
}


-(void) viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    // Alta de notificaciones
    
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    
    [nc addObserver:self selector:@selector(notifyThatCharacterDidChange:)
               name:CHARACTER_DID_CHANGE_NOTIFICATION
             object:nil];
}



-(void) viewWillDisappear:(BOOL)animated {
    
    [super viewWillDisappear:animated];
    
    // Baja de notificaciones
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc removeObserver:self];
    
    
}


// CHARACTER_DID_CHANGE_NOTIFICATION
-(void) notifyThatCharacterDidChange:(NSNotification *) n {
    
    // Tu modelo ha cambiado
    NSDictionary *userInfo = n.userInfo;
    
    self.model = [userInfo objectForKey:CHARACTER_KEY];
    
    // Sincronizamos modelo -> vista
    
    [self syncViewWithModel];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    NSLog(@"Pues estamos jodidos...");
}


#pragma mark - UIWebViewDelegate
- (void) webViewDidFinishLoad:(UIWebView *)webView {
    
    // Paramos y ocultamos el activity
    
    [self.activity stopAnimating];
    self.activity.hidden = YES;
}


- (BOOL) webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    
    if ((navigationType == UIWebViewNavigationTypeLinkClicked) ||
        (navigationType == UIWebViewNavigationTypeFormSubmitted)) {
        
        return NO;
    }
    
    return YES;
  }



# pragma mark - Utils
-(void) syncViewWithModel {
    
    self.activity.hidden = NO;
    [self.activity startAnimating];
    [self.browser loadRequest:[NSURLRequest requestWithURL:self.model.wikiPage]];
    
}


@end
