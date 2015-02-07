//
//  MJSCWikiViewController.m
//  StartWars
//
//  Created by María Jesús Senosiain Caamiña on 07/02/15.
//  Copyright (c) 2015 María Jesús Senosiain Caamiña. All rights reserved.
//

#import "MJSCWikiViewController.h"

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
    
    self.activity.hidden = NO;
    [self.activity startAnimating];
    
    [self.browser loadRequest:[NSURLRequest requestWithURL:self.model.wikiPage]];
    
    
    // Do any additional setup after loading the view from its nib.
    
    
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

@end
