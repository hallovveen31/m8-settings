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

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->sSpecialLayout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/android/settings/framework/activity/HtcWrapHeader$Type;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p4}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->initialize(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader$Type;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/settings/framework/activity/HtcWrapHeader$Type;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p3}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->initialize(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader$Type;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader$Type;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->initialize(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader$Type;)V

    return-void
.end method

.method private static inflateDividerView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    const/high16 v5, 0x205

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getListItemDivider()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2
.end method

.method private static inflateIconImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 7

    new-instance v1, Lcom/android/settings/framework/widget/HtcColorFilterImageView;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/widget/HtcColorFilterImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x205

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v5, 0x7f090029

    invoke-virtual {v1, v5}, Landroid/view/View;->setId(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private static inflateLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09018d

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    return-object v0
.end method

.method private static inflateLinearLayout(Landroid/content/Context;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900e2

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "HtcListItemHeight"

    invoke-static {p0, v2}, Lcom/htc/widget/HtcProperty;->getProperty(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    const-string v2, "common_list_item_background"

    const v3, 0x208003b

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-object p1
.end method

.method private static inflateRelativeLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 7

    const/4 v6, -0x2

    const/4 v5, 0x1

    const/high16 v4, 0x40c0

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v6, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v3, 0x0

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private static inflateSummaryTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, -0x2

    const v3, 0x1020016

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget-boolean v2, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->sSpecialLayout:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    const v2, 0x2030042

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0c106f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    return-object v1

    :cond_0
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method private static inflateTitleTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    const v2, 0x2030037

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    sget-boolean v2, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->sSpecialLayout:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private static inflateToggleButtonView(Landroid/content/Context;)Lcom/android/settings/framework/widget/HtcToggleButton;
    .locals 4

    new-instance v1, Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private initialize(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader$Type;)V
    .locals 10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

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

    :cond_0
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->sSpecialLayout:Z

    :goto_0
    invoke-static {p1, p0}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateLinearLayout(Landroid/content/Context;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateIconImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateRelativeLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateTitleTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateSummaryTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v2, 0x0

    sget-object v9, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    if-ne v9, p2, :cond_1

    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateDividerView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    :cond_1
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateToggleButtonView(Landroid/content/Context;)Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v8

    sget-boolean v9, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->sSpecialLayout:Z

    if-eqz v9, :cond_4

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mIconImageView:Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mTitleTextView:Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mSummaryTextView:Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    return-void

    :cond_3
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->sSpecialLayout:Z

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public bindWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mIconImageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mSummaryTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getIconImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mIconImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSummaryTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mSummaryTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    return-object v0
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mViewName:Ljava/lang/String;

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/widget/HtcToggleButton;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setViewName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mViewName:Ljava/lang/String;

    return-void
.end method
