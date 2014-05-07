.class public Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;
.super Landroid/widget/LinearLayout;
.source "HtcPreferenceHeaderItemView.java"

# interfaces
.implements Lcom/android/settings/framework/widget/HtcIfPreferenceHeaderItemView;


# static fields
.field private static final LISTVIEW_ICON_SIZE_FOR_FULL_HD_RESOLUTION:I = 0x6c

.field private static sSpecialLayout:Z


# instance fields
.field private mIconImageView:Landroid/widget/ImageView;

.field private mSummaryTextView:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->sSpecialLayout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->initialize(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->initialize(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->initialize(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method private static inflateIconImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 7
    .parameter "context"

    .prologue
    .line 231
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 232
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 237
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x7f0e0055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 238
    .local v0, icon_size:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x205

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 241
    .local v3, margin_size:I
    const v5, 0x7f090029

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 244
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 245
    .local v2, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 246
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 249
    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 251
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    return-object v1
.end method

.method private static inflateLinearLayout(Landroid/content/Context;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 9
    .parameter "context"
    .parameter "linearLayout"

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 187
    .local v3, res:Landroid/content/res/Resources;
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    const-string v6, "HtcListItemHeight"

    invoke-static {p0, v6}, Lcom/htc/widget/HtcProperty;->getProperty(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 197
    const-string v6, "common_list_item_background"

    const v7, 0x208003b

    invoke-static {p0, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 200
    .local v0, backgroundId:I
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 203
    const/16 v6, 0x10

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 207
    const/4 v2, 0x0

    .line 208
    .local v2, left:I
    const/4 v5, 0x0

    .line 211
    .local v5, top:I
    const/4 v4, 0x0

    .line 212
    .local v4, right:I
    const/4 v1, 0x0

    .line 213
    .local v1, bottom:I
    invoke-virtual {p1, v2, v5, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 215
    return-object p1
.end method

.method private static inflateRelativeLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    const/high16 v4, 0x40c0

    .line 269
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 271
    .local v1, relativeLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 278
    .local v2, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v5, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 289
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 290
    const/high16 v3, 0x205

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 292
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 294
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 297
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    return-object v1
.end method

.method private static inflateSummaryTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, -0x2

    const v3, 0x1020016

    .line 367
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 372
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 376
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 381
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 384
    sget-boolean v2, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->sSpecialLayout:Z

    if-eqz v2, :cond_0

    .line 386
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 395
    :goto_0
    const v2, 0x2030042

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 399
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 402
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 404
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    return-object v1

    .line 390
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

    .line 314
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 319
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 324
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 329
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 332
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 335
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 338
    const v2, 0x2030037

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 340
    sget-boolean v2, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->sSpecialLayout:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 342
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 346
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 349
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    return-object v1
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, locale:Ljava/lang/String;
    const-string v6, "iw"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "ar"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "fa"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    :cond_0
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->sSpecialLayout:Z

    .line 130
    :goto_0
    invoke-static {p1, p0}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->inflateLinearLayout(Landroid/content/Context;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 131
    .local v0, container:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->inflateIconImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    .line 132
    .local v1, iconImageView:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->inflateRelativeLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 133
    .local v3, subContainer:Landroid/widget/RelativeLayout;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->inflateTitleTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    .line 134
    .local v5, titleTextView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->inflateSummaryTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v4

    .line 137
    .local v4, summaryTextView:Landroid/widget/TextView;
    sget-boolean v6, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->sSpecialLayout:Z

    if-eqz v6, :cond_2

    .line 145
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 147
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    :goto_1
    iput-object v1, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mIconImageView:Landroid/widget/ImageView;

    .line 164
    iput-object v5, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mTitleTextView:Landroid/widget/TextView;

    .line 165
    iput-object v4, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mSummaryTextView:Landroid/widget/TextView;

    .line 166
    return-void

    .line 127
    .end local v0           #container:Landroid/widget/LinearLayout;
    .end local v1           #iconImageView:Landroid/widget/ImageView;
    .end local v3           #subContainer:Landroid/widget/RelativeLayout;
    .end local v4           #summaryTextView:Landroid/widget/TextView;
    .end local v5           #titleTextView:Landroid/widget/TextView;
    :cond_1
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->sSpecialLayout:Z

    goto :goto_0

    .line 157
    .restart local v0       #container:Landroid/widget/LinearLayout;
    .restart local v1       #iconImageView:Landroid/widget/ImageView;
    .restart local v3       #subContainer:Landroid/widget/RelativeLayout;
    .restart local v4       #summaryTextView:Landroid/widget/TextView;
    .restart local v5       #titleTextView:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 160
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public bindWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2
    .parameter "wrapHeader"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mIconImageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mSummaryTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mSummaryTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mSummaryTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getIconImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mIconImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSummaryTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mSummaryTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method
