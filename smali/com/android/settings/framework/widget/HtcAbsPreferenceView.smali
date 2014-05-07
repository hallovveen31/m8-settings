.class public abstract Lcom/android/settings/framework/widget/HtcAbsPreferenceView;
.super Landroid/widget/LinearLayout;
.source "HtcAbsPreferenceView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CustomView:",
        "Landroid/view/View;",
        "CustomWidgetView:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# static fields
.field private static final DEBUG_LAYOUT:Z

.field protected static LAYOUT_MARGIN_M1:I

.field protected static LAYOUT_MARGIN_M2:I

.field protected static LAYOUT_MARGIN_M4:I

.field protected static LAYOUT_MARGIN_M5:I

.field protected static LAYOUT_MARGIN_M5_2:I

.field private static final TAG:Ljava/lang/String;

.field private static sSpecialLayout:Z


# instance fields
.field private mContainer:Landroid/widget/LinearLayout;

.field private mCustomView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCustomView;"
        }
    .end annotation
.end field

.field private mCustomWidgetView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCustomWidgetView;"
        }
    .end annotation
.end field

.field private mIconImageView:Landroid/widget/ImageView;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->sSpecialLayout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 74
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->initialize(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->initialize(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 98
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->initialize(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method private inflateContainer(Landroid/content/Context;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 5
    .parameter "context"
    .parameter "linearLayout"

    .prologue
    .line 265
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 270
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    const-string v2, "HtcListItemHeight"

    invoke-static {p1, v2}, Lcom/htc/widget/HtcProperty;->getProperty(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 280
    const-string v2, "common_list_item_background"

    const v3, 0x208003b

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 285
    .local v0, backgroundId:I
    const/16 v2, 0x10

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 295
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onSetContainerViewPadding(Landroid/view/View;)V

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onInflatedContainer(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 304
    return-object p2
.end method

.method private inflateCustomView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TCustomView;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    const/4 v4, -0x1

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onInflateCustomView()Landroid/view/View;

    move-result-object v0

    .line 520
    .local v0, customView:Landroid/view/View;,"TCustomView;"
    if-nez v0, :cond_0

    .line 521
    const/4 v0, 0x0

    .line 550
    .end local v0           #customView:Landroid/view/View;,"TCustomView;"
    :goto_0
    return-object v0

    .line 525
    .restart local v0       #customView:Landroid/view/View;,"TCustomView;"
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onGetCustomViewId()I

    move-result v2

    .line 526
    .local v2, overrideId:I
    if-eq v2, v4, :cond_1

    if-eqz v2, :cond_1

    .line 527
    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 532
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 538
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M4:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 542
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onSetCustomViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 545
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private inflateCustomWidgetView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TCustomWidgetView;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    const/4 v3, -0x2

    .line 625
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onInflateCustomWidgetView()Landroid/view/View;

    move-result-object v0

    .line 626
    .local v0, customWidgetView:Landroid/view/View;,"TCustomWidgetView;"
    if-nez v0, :cond_0

    .line 627
    const/4 v0, 0x0

    .line 655
    .end local v0           #customWidgetView:Landroid/view/View;,"TCustomWidgetView;"
    :goto_0
    return-object v0

    .line 631
    .restart local v0       #customWidgetView:Landroid/view/View;,"TCustomWidgetView;"
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onGetCustomWidgetViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 635
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 640
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    sget-boolean v2, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->sSpecialLayout:Z

    if-eqz v2, :cond_1

    .line 641
    sget v2, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M2:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 647
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onSetCustomWidgetViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 650
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 643
    :cond_1
    sget v2, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M2:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method private static inflateIconImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x7f0e0055

    .line 335
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 336
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 340
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f090029

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 345
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 352
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    sget-boolean v3, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->sSpecialLayout:Z

    if-eqz v3, :cond_0

    .line 353
    sget v3, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M1:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 359
    :goto_0
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 361
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    return-object v0

    .line 355
    :cond_0
    sget v3, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M1:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private static inflateLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x2

    .line 382
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 389
    .local v1, linearLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v0, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 393
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 400
    sget-boolean v2, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->sSpecialLayout:Z

    if-eqz v2, :cond_0

    .line 401
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 409
    :goto_0
    return-object v1

    .line 403
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private inflateTitleTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 6
    .parameter "context"

    .prologue
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 431
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 435
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onGetTitleViewId()I

    move-result v1

    .line 436
    .local v1, overrideId:I
    if-eq v1, v4, :cond_0

    if-eqz v1, :cond_0

    .line 437
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 446
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 449
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 455
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 458
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 461
    const v3, 0x2030037

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 466
    invoke-virtual {p0, p1, v2}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onInflatedTitleTextView(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 471
    return-object v2

    .line 440
    .end local v0           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    goto :goto_0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 160
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 161
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, locale:Ljava/lang/String;
    const-string v8, "iw"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "ar"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "fa"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 166
    :cond_0
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->sSpecialLayout:Z

    .line 172
    :goto_0
    const/high16 v8, 0x205

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    sput v8, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M1:I

    .line 174
    const v8, 0x2050001

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    sput v8, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M2:I

    .line 176
    const v8, 0x2050003

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    sput v8, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M4:I

    .line 178
    const v8, 0x205000c

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    sput v8, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M5:I

    .line 180
    const v8, 0x205000e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    sput v8, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M5_2:I

    .line 191
    invoke-direct {p0, p1, p0}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->inflateContainer(Landroid/content/Context;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 192
    .local v0, container:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->inflateIconImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v3

    .line 193
    .local v3, iconImageView:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->inflateLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 194
    .local v6, subContainer:Landroid/widget/LinearLayout;
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->inflateTitleTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v7

    .line 195
    .local v7, titleTextView:Landroid/widget/TextView;
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->inflateCustomView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 196
    .local v1, customView:Landroid/view/View;,"TCustomView;"
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->inflateCustomWidgetView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    .line 200
    .local v2, customWidgetView:Landroid/view/View;,"TCustomWidgetView;"
    sget-boolean v8, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->sSpecialLayout:Z

    if-eqz v8, :cond_5

    .line 209
    if-eqz v2, :cond_1

    .line 210
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    :cond_1
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    if-eqz v1, :cond_2

    .line 216
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mContainer:Landroid/widget/LinearLayout;

    .line 243
    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mIconImageView:Landroid/widget/ImageView;

    .line 244
    iput-object v7, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mTitleTextView:Landroid/widget/TextView;

    .line 245
    iput-object v1, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mCustomView:Landroid/view/View;

    .line 246
    iput-object v2, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mCustomWidgetView:Landroid/view/View;

    .line 247
    return-void

    .line 168
    .end local v0           #container:Landroid/widget/LinearLayout;
    .end local v1           #customView:Landroid/view/View;,"TCustomView;"
    .end local v2           #customWidgetView:Landroid/view/View;,"TCustomWidgetView;"
    .end local v3           #iconImageView:Landroid/widget/ImageView;
    .end local v6           #subContainer:Landroid/widget/LinearLayout;
    .end local v7           #titleTextView:Landroid/widget/TextView;
    :cond_4
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->sSpecialLayout:Z

    goto :goto_0

    .line 229
    .restart local v0       #container:Landroid/widget/LinearLayout;
    .restart local v1       #customView:Landroid/view/View;,"TCustomView;"
    .restart local v2       #customWidgetView:Landroid/view/View;,"TCustomWidgetView;"
    .restart local v3       #iconImageView:Landroid/widget/ImageView;
    .restart local v6       #subContainer:Landroid/widget/LinearLayout;
    .restart local v7       #titleTextView:Landroid/widget/TextView;
    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    if-eqz v1, :cond_6

    .line 234
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    :cond_6
    if-eqz v2, :cond_3

    .line 238
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private setContainerViewPadding(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "withoutCustomView"

    .prologue
    .line 714
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    if-nez p1, :cond_0

    .line 724
    :goto_0
    return-void

    .line 718
    :cond_0
    if-eqz p2, :cond_1

    .line 719
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onSetContainerViewPaddingWithoutCustomView(Landroid/view/View;)V

    goto :goto_0

    .line 722
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onSetContainerViewPadding(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setContainerViewPadding(Z)V
    .locals 1
    .parameter "withoutCustomView"

    .prologue
    .line 710
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->setContainerViewPadding(Landroid/view/View;Z)V

    .line 711
    return-void
.end method

.method private setDefaultContainerViewPadding(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 695
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    if-nez p1, :cond_0

    .line 707
    :goto_0
    return-void

    .line 701
    :cond_0
    sget v1, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M1:I

    .line 702
    .local v1, left:I
    sget v3, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M5:I

    .line 703
    .local v3, top:I
    sget v2, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M1:I

    .line 704
    .local v2, right:I
    sget v0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M4:I

    .line 706
    .local v0, bottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public getContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 156
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCustomView;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getCustomWidgetView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCustomWidgetView;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mCustomWidgetView:Landroid/view/View;

    return-object v0
.end method

.method public getIconImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 111
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mIconImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 122
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideCustomView(Z)V
    .locals 2
    .parameter "hide"

    .prologue
    .line 727
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 732
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->setContainerViewPadding(Z)V

    goto :goto_0

    .line 731
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onGetCustomViewId()I
    .locals 1

    .prologue
    .line 564
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    const/4 v0, -0x1

    return v0
.end method

.method protected onGetCustomWidgetViewId()I
    .locals 1

    .prologue
    .line 666
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    const v0, 0x1020018

    return v0
.end method

.method protected onGetTitleViewId()I
    .locals 1

    .prologue
    .line 496
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    const/4 v0, -0x1

    return v0
.end method

.method protected abstract onInflateCustomView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCustomView;"
        }
    .end annotation
.end method

.method protected onInflateCustomWidgetView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCustomWidgetView;"
        }
    .end annotation

    .prologue
    .line 690
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onInflatedContainer(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "context"
    .parameter "container"

    .prologue
    .line 320
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    return-void
.end method

.method protected onInflatedTitleTextView(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0
    .parameter "context"
    .parameter "textView"

    .prologue
    .line 484
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    return-void
.end method

.method protected onSetContainerViewPadding(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 594
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->setDefaultContainerViewPadding(Landroid/view/View;)V

    .line 595
    return-void
.end method

.method protected onSetContainerViewPaddingWithoutCustomView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 598
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->setDefaultContainerViewPadding(Landroid/view/View;)V

    .line 599
    return-void
.end method

.method protected onSetCustomViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0
    .parameter "layoutParams"

    .prologue
    .line 576
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    return-void
.end method

.method protected onSetCustomWidgetViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0
    .parameter "layoutParams"

    .prologue
    .line 679
    .local p0, this:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"Lcom/android/settings/framework/widget/HtcAbsPreferenceView<TCustomView;TCustomWidgetView;>;"
    return-void
.end method
