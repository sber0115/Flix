//
//  DetailsViewController.h
//  Flix
//
//  Created by sbernal0115 on 6/26/19.
//  Copyright © 2019 sbernal0115. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *backDrop;
@property (weak, nonatomic) IBOutlet UILabel *titleString;
@property (weak, nonatomic) IBOutlet UILabel *releaseDate;
@property (weak, nonatomic) IBOutlet UIImageView *miniPoster;
@property (weak, nonatomic) IBOutlet UILabel *movieDes;
@property (nonatomic, strong) NSDictionary *movie;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *imageTapper;




@end

NS_ASSUME_NONNULL_END
