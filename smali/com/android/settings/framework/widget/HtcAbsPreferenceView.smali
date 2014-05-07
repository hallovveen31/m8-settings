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

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->sSpecialLayout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private inflateContainer(Landroid/content/Context;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "HtcListItemHeight"

    invoke-static {p1, v2}, Lcom/htc/widget/HtcProperty;->getProperty(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setMinimumHeight(I)V

    const-string v2, "common_list_item_background"

    const v3, 0x208003b

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x10

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0, p2}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onSetContainerViewPadding(Landroid/view/View;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onInflatedContainer(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    return-object p2
.end method

.method private inflateCustomView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TCustomView;"
        }
    .end annotation

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onInflateCustomView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onGetCustomViewId()I

    move-result v2

    if-eq v2, v4, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v3, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M4:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onSetCustomViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private inflateCustomWidgetView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TCustomWidgetView;"
        }
    .end annotation

    const/4 v3, -0x2

    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onInflateCustomWidgetView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onGetCustomWidgetViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget-boolean v2, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->sSpecialLayout:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M2:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onSetCustomWidgetViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    sget v2, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M2:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method private static inflateIconImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 5

    const v4, 0x7f0e0055

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090029

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget-boolean v3, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->sSpecialLayout:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M1:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object v0

    :cond_0
    sget v3, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M1:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private static inflateLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 4

    const/4 v3, -0x2

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v0, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-boolean v2, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->sSpecialLayout:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private inflateTitleTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onGetTitleViewId()I

    move-result v1

    if-eq v1, v4, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    const v3, 0x2030037

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onInflatedTitleTextView(Landroid/content/Context;Landroid/widget/TextView;)V

    return-object v2

    :cond_0
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    goto :goto_0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

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

    :cond_0
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->sSpecialLayout:Z

    :goto_0
    const/high16 v8, 0x205

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    sput v8, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M1:I

    const v8, 0x2050001

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    sput v8, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M2:I

    const v8, 0x2050003

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    sput v8, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M4:I

    const v8, 0x205000c

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    sput v8, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M5:I

    const v8, 0x205000e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    sput v8, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M5_2:I

    invoke-direct {p0, p1, p0}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->inflateContainer(Landroid/content/Context;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->inflateIconImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->inflateLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->inflateTitleTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->inflateCustomView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->inflateCustomWidgetView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    sget-boolean v8, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->sSpecialLayout:Z

    if-eqz v8, :cond_5

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v1, :cond_2

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mContainer:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mIconImageView:Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mTitleTextView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mCustomView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mCustomWidgetView:Landroid/view/View;

    return-void

    :cond_4
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->sSpecialLayout:Z

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v1, :cond_6

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private setContainerViewPadding(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onSetContainerViewPaddingWithoutCustomView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->onSetContainerViewPadding(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setContainerViewPadding(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->setContainerViewPadding(Landroid/view/View;Z)V

    return-void
.end method

.method private setDefaultContainerViewPadding(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v1, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M1:I

    sget v3, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M5:I

    sget v2, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M1:I

    sget v0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->LAYOUT_MARGIN_M4:I

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public getContainer()Landroid/widget/LinearLayout;
    .locals 1

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

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mCustomWidgetView:Landroid/view/View;

    return-object v0
.end method

.method public getIconImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mIconImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideCustomView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->setContainerViewPadding(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onGetCustomViewId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected onGetCustomWidgetViewId()I
    .locals 1

    const v0, 0x1020018

    return v0
.end method

.method protected onGetTitleViewId()I
    .locals 1

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

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onInflatedContainer(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 0

    return-void
.end method

.method protected onInflatedTitleTextView(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method protected onSetContainerViewPadding(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->setDefaultContainerViewPadding(Landroid/view/View;)V

    return-void
.end method

.method protected onSetContainerViewPaddingWithoutCustomView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->setDefaultContainerViewPadding(Landroid/view/View;)V

    return-void
.end method

.method protected onSetCustomViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    return-void
.end method

.method protected onSetCustomWidgetViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    return-void
.end method
