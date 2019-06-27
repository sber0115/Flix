//
//  DetailsViewController.m
//  Flix
//
//  Created by sbernal0115 on 6/26/19.
//  Copyright © 2019 sbernal0115. All rights reserved.
//

#import "DetailsViewController.h"
#import "UIImageView+AFNetworking.h"


@implementation DetailsViewController



- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    
    NSString *baseURLString = @"https://image.tmdb.org/t/p/w500";
    NSString *posterURLString = self.movie[@"poster_path"];
    
    NSString *fullPosterURLString = [baseURLString stringByAppendingString:posterURLString];
    
    NSURL *posterURL = [NSURL URLWithString:fullPosterURLString];
    
    
    [self.miniPoster setImageWithURL:posterURL];
    
    
    NSString *backDropURLString = self.movie[@"backdrop_path"];
    
    NSString *fullBackDropURLString = [baseURLString stringByAppendingString:backDropURLString];
    
    NSURL *backDropURL = [NSURL URLWithString:fullBackDropURLString];
    [self.backDrop setImageWithURL:backDropURL];
    
    
    self.releaseDate.text = self.movie[@"release_date"];
    self.titleString.text = self.movie[@"title"];
    self.movieDes.text = self.movie[@"overview"];
    
    [self.titleString sizeToFit];
    [self.movieDes sizeToFit];
    
    
}



@end
