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

    .prologue
    .line 18
    const-class v0, Lcom/android/settings/ChooseLockFrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ChooseLockFrameLayout;->TAG:Ljava/lang/String;

    .line 19
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockFrameLayout;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mStatusBarHeight:I

    .line 21
    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarHeight:I

    .line 22
    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarWidth:I

    .line 25
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetActionBar:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetStatusBar:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetNavigationBar:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mStatusBarHeight:I

    .line 21
    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarHeight:I

    .line 22
    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarWidth:I

    .line 25
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetActionBar:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetStatusBar:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetNavigationBar:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mStatusBarHeight:I

    .line 21
    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarHeight:I

    .line 22
    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarWidth:I

    .line 25
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetActionBar:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetStatusBar:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetNavigationBar:Z

    .line 60
    return-void
.end method

.method private adjustChildLayoutParameters()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 192
    const/4 v3, 0x0

    .line 193
    .local v3, footer:Lcom/htc/widget/HtcFooter;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFrameLayout;->getChildCount()I

    move-result v1

    .line 196
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 197
    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    const/16 v5, 0x8

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v5, v6, :cond_0

    instance-of v5, v0, Lcom/htc/widget/HtcFooter;

    if-nez v5, :cond_1

    .line 196
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 200
    check-cast v3, Lcom/htc/widget/HtcFooter;

    .line 205
    .end local v0           #child:Landroid/view/View;
    :cond_2
    if-nez v3, :cond_4

    .line 206
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_9

    .line 207
    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 208
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 209
    .local v2, flp:Landroid/widget/FrameLayout$LayoutParams;
    if-nez v2, :cond_3

    .line 206
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 211
    :cond_3
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 212
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 213
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 214
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 215
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 220
    .end local v0           #child:Landroid/view/View;
    .end local v2           #flp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/htc/widget/HtcFooter;->measure(II)V

    .line 222
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_9

    .line 223
    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 224
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 225
    .restart local v2       #flp:Landroid/widget/FrameLayout$LayoutParams;
    if-nez v2, :cond_5

    .line 222
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 228
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/ChooseLockFrameLayout;->isHorizontal()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 229
    if-ne v3, v0, :cond_6

    .line 231
    const/4 v5, 0x5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 253
    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_4

    .line 234
    :cond_6
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 235
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 236
    const/4 v5, 0x3

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 237
    invoke-virtual {v3}, Lcom/htc/widget/HtcFooter;->getMeasuredWidth()I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 238
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    .line 241
    :cond_7
    if-ne v3, v0, :cond_8

    .line 243
    const/16 v5, 0x50

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_5

    .line 246
    :cond_8
    const/16 v5, 0x30

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 247
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 248
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 249
    invoke-virtual {v3}, Lcom/htc/widget/HtcFooter;->getMeasuredHeight()I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 250
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_5

    .line 255
    .end local v0           #child:Landroid/view/View;
    .end local v2           #flp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    return-void
.end method

.method private getActionBarHeight()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10102eb

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->mActionBarHeight:I

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    iget v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->mActionBarHeight:I

    return v1
.end method

.method private isHorizontal()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-nez v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 146
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public adjustLayout()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 155
    .local v0, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v0, :cond_0

    .line 156
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 159
    .restart local v0       #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 160
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 163
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 165
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 167
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 169
    iget-boolean v2, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetStatusBar:Z

    if-eqz v2, :cond_2

    .line 170
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Lcom/android/settings/ChooseLockFrameLayout;->mStatusBarHeight:I

    if-lez v3, :cond_1

    iget v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->mStatusBarHeight:I

    :cond_1
    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 172
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetActionBar:Z

    if-eqz v1, :cond_3

    .line 173
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0}, Lcom/android/settings/ChooseLockFrameLayout;->getActionBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 176
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/ChooseLockFrameLayout;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    iget v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarWidth:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 182
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/ChooseLockFrameLayout;->adjustChildLayoutParameters()V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFrameLayout;->requestLayout()V

    .line 186
    return-void

    .line 179
    :cond_4
    iget v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 6
    .parameter "insets"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 70
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

    .line 72
    :cond_0
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/android/settings/ChooseLockFrameLayout;->getActionBarHeight()I

    move-result v4

    sub-int v2, v3, v4

    .line 73
    .local v2, newStatusBarHeight:I
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 74
    .local v0, newNavigationBarHeight:I
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 76
    .local v1, newNavigationBarWidgth:I
    if-lez v2, :cond_1

    iget v3, p0, Lcom/android/settings/ChooseLockFrameLayout;->mStatusBarHeight:I

    if-eq v2, v3, :cond_1

    .line 77
    iput v2, p0, Lcom/android/settings/ChooseLockFrameLayout;->mStatusBarHeight:I

    .line 79
    :cond_1
    if-ltz v0, :cond_2

    iget v3, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarHeight:I

    if-eq v0, v3, :cond_2

    .line 80
    iput v0, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarHeight:I

    .line 82
    :cond_2
    if-ltz v1, :cond_3

    iget v3, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarWidth:I

    if-eq v1, v3, :cond_3

    .line 83
    iput v1, p0, Lcom/android/settings/ChooseLockFrameLayout;->mNavigationBarWidth:I

    .line 85
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFrameLayout;->adjustLayout()V

    .line 88
    const/4 v3, 0x0

    return v3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/ChooseLockFrameLayout;->getActionBarHeight()I

    .line 110
    return-void
.end method

.method public final setInsetActionBar(Z)V
    .locals 0
    .parameter "insetActionBar"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetActionBar:Z

    .line 119
    return-void
.end method

.method public final setInsetNavigationBar(Z)V
    .locals 0
    .parameter "insetNavigationBar"

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetNavigationBar:Z

    .line 135
    return-void
.end method

.method public final setInsetStatusBar(Z)V
    .locals 0
    .parameter "insetStatusBar"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/settings/ChooseLockFrameLayout;->insetStatusBar:Z

    .line 127
    return-void
.end method
