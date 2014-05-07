.class public final Lcom/android/settings/ChooseLockFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ChooseLockFrameLayout.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private insetActionBar:Z

.field private insetNavigationBar:Z

.field private insetStatusBar:Z

.field private mActionBarHeight:I

.field private mNavigationBarHeight:I

.field private mNavigationBarWidth:I

.field private mStatusBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/ChooseLockFrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ChooseLockFrameLayout;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockFrameLayout;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mStatusBarHeight:I

    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarHeight:I

    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarWidth:I

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetActionBar:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetStatusBar:Z

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetNavigationBar:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mStatusBarHeight:I

    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarHeight:I

    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarWidth:I

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetActionBar:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetStatusBar:Z

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetNavigationBar:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mStatusBarHeight:I

    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarHeight:I

    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarWidth:I

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetActionBar:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetStatusBar:Z

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetNavigationBar:Z

    return-void
.end method

.method private adjustChildLayoutParameters()V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v5, 0x8

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v5, v6, :cond_0

    instance-of v5, v0, Lcom/htc/widget/HtcFooter;

    if-nez v5, :cond_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v0

    check-cast v3, Lcom/htc/widget/HtcFooter;

    :cond_2
    if-nez v3, :cond_4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_9

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v2, :cond_3

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_4
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/view/View;->measure(II)V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_9

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v2, :cond_5

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/ChooseLockFrameLayout;->isHorizontal()Z

    move-result v5

    if-eqz v5, :cond_7

    if-ne v3, v0, :cond_6

    const/4 v5, 0x5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_4

    :cond_6
    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, 0x3

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_5

    :cond_7
    if-ne v3, v0, :cond_8

    const/16 v5, 0x50

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_5

    :cond_8
    const/16 v5, 0x30

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_5

    :cond_9
    return-void
.end method

.method private getActionBarHeight()I
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10102eb

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->mActionBarHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->mActionBarHeight:I

    return v1
.end method

.method private isHorizontal()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public adjustLayout()V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    :cond_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-boolean v2, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetStatusBar:Z

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Lcom/android/settings/ChooseLockFrameLayout;->mStatusBarHeight:I

    if-lez v3, :cond_1

    iget v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->mStatusBarHeight:I

    :cond_1
    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetActionBar:Z

    if-eqz v1, :cond_3

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0}, Lcom/android/settings/ChooseLockFrameLayout;->getActionBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/ChooseLockFrameLayout;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarWidth:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/settings/ChooseLockFrameLayout;->adjustChildLayoutParameters()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_4
    iget v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 6

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    sget-boolean v3, Lcom/android/settings/ChooseLockFrameLayout;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/ChooseLockFrameLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insets = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/android/settings/ChooseLockFrameLayout;->getActionBarHeight()I

    move-result v4

    sub-int v2, v3, v4

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-lez v2, :cond_1

    iget v3, p0, Lcom/android/settings/ChooseLockFrameLayout;->mStatusBarHeight:I

    if-eq v2, v3, :cond_1

    iput v2, p0, Lcom/android/settings/ChooseLockFrameLayout;->mStatusBarHeight:I

    :cond_1
    if-ltz v0, :cond_2

    iget v3, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarHeight:I

    if-eq v0, v3, :cond_2

    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarHeight:I

    :cond_2
    if-ltz v1, :cond_3

    iget v3, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarWidth:I

    if-eq v1, v3, :cond_3

    iput v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarWidth:I

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFrameLayout;->adjustLayout()V

    const/4 v3, 0x0

    return v3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/settings/ChooseLockFrameLayout;->getActionBarHeight()I

    return-void
.end method

.method public final setInsetActionBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetActionBar:Z

    return-void
.end method

.method public final setInsetNavigationBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetNavigationBar:Z

    return-void
.end method

.method public final setInsetStatusBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetStatusBar:Z

    return-void
.end method
