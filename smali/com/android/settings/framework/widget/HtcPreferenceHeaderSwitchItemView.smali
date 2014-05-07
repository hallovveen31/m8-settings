.class public Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;
.super Landroid/widget/LinearLayout;
.source "HtcPreferenceHeaderSwitchItemView.java"

# interfaces
.implements Lcom/android/settings/framework/widget/HtcIfPreferenceHeaderItemView;


# static fields
.field private static final LISTVIEW_ICON_SIZE_FOR_FULL_HD_RESOLUTION:I = 0x6c

.field private static sSpecialLayout:Z


# instance fields
.field private mIconImageView:Landroid/widget/ImageView;

.field private mSummaryTextView:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

.field private mViewName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->sSpecialLayout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/android/settings/framework/activity/HtcWrapHeader$Type;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "headerType"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    invoke-direct {p0, p1, p4}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->initialize(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader$Type;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/settings/framework/activity/HtcWrapHeader$Type;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "headerType"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    invoke-direct {p0, p1, p3}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->initialize(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader$Type;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader$Type;)V
    .locals 0
    .parameter "context"
    .parameter "headerType"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->initialize(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader$Type;)V

    .line 66
    return-void
.end method

.method private static inflateDividerView(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .parameter "context"

    .prologue
    const/high16 v5, 0x205

    .line 520
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 521
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 525
    .local v2, view:Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 532
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 534
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 538
    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getListItemDivider()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 540
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    return-object v2
.end method

.method private static inflateIconImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 7
    .parameter "context"

    .prologue
    .line 329
    new-instance v1, Lcom/android/settings/framework/widget/HtcColorFilterImageView;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/widget/HtcColorFilterImageView;-><init>(Landroid/content/Context;)V

    .line 330
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 335
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x7f0e0055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 336
    .local v0, icon_size:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x205

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 339
    .local v3, margin_size:I
    const v5, 0x7f090029

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 342
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 343
    .local v2, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 344
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 347
    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 349
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    return-object v1
.end method

.method private static inflateLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 289
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 293
    .local v0, linearLayout:Landroid/widget/LinearLayout;
    const v1, 0x7f09018d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 298
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 308
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 311
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 313
    return-object v0
.end method

.method private static inflateLinearLayout(Landroid/content/Context;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 5
    .parameter "context"
    .parameter "linearLayout"

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 250
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0900e2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 254
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    const-string v2, "HtcListItemHeight"

    invoke-static {p0, v2}, Lcom/htc/widget/HtcProperty;->getProperty(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 264
    const-string v2, "common_list_item_background"

    const v3, 0x208003b

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 267
    .local v0, backgroundId:I
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 270
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 272
    return-object p1
.end method

.method private static inflateRelativeLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x1

    const/high16 v4, 0x40c0

    .line 367
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 369
    .local v1, relativeLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 376
    .local v2, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v6, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 387
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 388
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 390
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 392
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 395
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    return-object v1
.end method

.method private static inflateSummaryTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v4, -0x2

    const v3, 0x1020016

    .line 465
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 470
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 474
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 479
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 482
    sget-boolean v2, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->sSpecialLayout:Z

    if-eqz v2, :cond_0

    .line 484
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 493
    :goto_0
    const v2, 0x2030042

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 496
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 499
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 501
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    const v2, 0x7f0c106f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 506
    return-object v1

    .line 488
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method private static inflateTitleTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 412
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 417
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 422
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 427
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 430
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 433
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 436
    const v2, 0x2030037

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 438
    sget-boolean v2, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->sSpecialLayout:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 440
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 444
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 447
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    return-object v1
.end method

.method private static inflateToggleButtonView(Landroid/content/Context;)Lcom/android/settings/framework/widget/HtcToggleButton;
    .locals 4
    .parameter "context"

    .prologue
    .line 556
    new-instance v1, Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    .line 560
    .local v1, toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/widget/HtcToggleButton;->setId(I)V

    .line 564
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 570
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 573
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/widget/HtcToggleButton;->setFocusable(Z)V

    .line 576
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/widget/HtcToggleButton;->setClickable(Z)V

    .line 578
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/widget/HtcToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    return-object v1
.end method

.method private initialize(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader$Type;)V
    .locals 10
    .parameter "context"
    .parameter "headerType"

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, locale:Ljava/lang/String;
    const-string v9, "iw"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "ar"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "fa"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 163
    :cond_0
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->sSpecialLayout:Z

    .line 168
    :goto_0
    invoke-static {p1, p0}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateLinearLayout(Landroid/content/Context;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 169
    .local v1, container:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 170
    .local v5, secondLevelContainer:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateIconImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v3

    .line 171
    .local v3, iconImageView:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateRelativeLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 172
    .local v0, ThirdLevelContainer:Landroid/widget/RelativeLayout;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateTitleTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v7

    .line 173
    .local v7, titleTextView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateSummaryTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v6

    .line 174
    .local v6, summaryTextView:Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 175
    .local v2, dividerView:Landroid/view/View;
    sget-object v9, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    if-ne v9, p2, :cond_1

    .line 176
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateDividerView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    .line 178
    :cond_1
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateToggleButtonView(Landroid/content/Context;)Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v8

    .line 181
    .local v8, toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    sget-boolean v9, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->sSpecialLayout:Z

    if-eqz v9, :cond_4

    .line 193
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    if-eqz v2, :cond_2

    .line 195
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    :cond_2
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 201
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 225
    :goto_1
    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mIconImageView:Landroid/widget/ImageView;

    .line 226
    iput-object v7, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mTitleTextView:Landroid/widget/TextView;

    .line 227
    iput-object v6, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mSummaryTextView:Landroid/widget/TextView;

    .line 228
    iput-object v8, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    .line 229
    return-void

    .line 165
    .end local v0           #ThirdLevelContainer:Landroid/widget/RelativeLayout;
    .end local v1           #container:Landroid/widget/LinearLayout;
    .end local v2           #dividerView:Landroid/view/View;
    .end local v3           #iconImageView:Landroid/widget/ImageView;
    .end local v5           #secondLevelContainer:Landroid/widget/LinearLayout;
    .end local v6           #summaryTextView:Landroid/widget/TextView;
    .end local v7           #titleTextView:Landroid/widget/TextView;
    .end local v8           #toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    :cond_3
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->sSpecialLayout:Z

    goto :goto_0

    .line 214
    .restart local v0       #ThirdLevelContainer:Landroid/widget/RelativeLayout;
    .restart local v1       #container:Landroid/widget/LinearLayout;
    .restart local v2       #dividerView:Landroid/view/View;
    .restart local v3       #iconImageView:Landroid/widget/ImageView;
    .restart local v5       #secondLevelContainer:Landroid/widget/LinearLayout;
    .restart local v6       #summaryTextView:Landroid/widget/TextView;
    .restart local v7       #titleTextView:Landroid/widget/TextView;
    .restart local v8       #toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    :cond_4
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    if-eqz v2, :cond_5

    .line 216
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    :cond_5
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 222
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public bindWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2
    .parameter "wrapHeader"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mIconImageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mSummaryTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method

.method public getIconImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mIconImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSummaryTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mSummaryTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    return-object v0
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mViewName:Ljava/lang/String;

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 113
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->setClickable(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/widget/HtcToggleButton;->setEnabled(Z)V

    .line 119
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setViewName(Ljava/lang/String;)V
    .locals 0
    .parameter "viewName"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mViewName:Ljava/lang/String;

    .line 98
    return-void
.end method
