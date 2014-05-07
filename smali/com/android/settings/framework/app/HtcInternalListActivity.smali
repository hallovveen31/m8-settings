.class public Lcom/android/settings/framework/app/HtcInternalListActivity;
.super Lcom/android/settings/framework/app/HtcListActivity;
.source "HtcInternalListActivity.java"

# interfaces
.implements Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;


# static fields
.field private static final STATUS_BAR_BACKGROUND_INDEX:I


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mHtcFontScale:F

.field private mIsInForeground:Z

.field private mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

.field private mThemeId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcListActivity;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/HtcInternalListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->TAG:Ljava/lang/String;

    .line 26
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->DEBUG:Z

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mIsInForeground:Z

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mHtcFontScale:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/app/HtcInternalListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/app/HtcInternalListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final applyHtcActionBar()V
    .locals 5

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 146
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v3, :cond_1

    .line 148
    new-instance v3, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v3, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 151
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v3}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 153
    .local v1, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 154
    .local v2, mText:Lcom/htc/widget/ActionBarText;
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 157
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 159
    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 162
    .end local v1           #actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    .end local v2           #mText:Lcom/htc/widget/ActionBarText;
    :cond_1
    return-void
.end method

.method private setupTranslucentStatusBar()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f020071

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 79
    sget-object v4, Lcom/android/settings/R$styleable;->myStylable:[I

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalListActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 80
    .local v3, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v3, v6, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 81
    .local v0, bgColor:I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 83
    .local v2, layerDrawable:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 84
    .local v1, colorDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    const v5, 0x2080001

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setBackgroundResource(I)V

    .line 88
    return-void
.end method


# virtual methods
.method public final getHtcActionBar()Lcom/htc/widget/ActionBarExt;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-static {p0}, Landroid/content/res/HtcConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mHtcFontScale:F

    .line 51
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mThemeId:I

    .line 52
    iget v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mThemeId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->setTheme(I)V

    .line 57
    invoke-static {p0}, Lcom/android/settings/framework/app/HtcActivityManager;->applyGuestMode(Landroid/app/Activity;)Z

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance v0, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    .line 63
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->applyHtcActionBar()V

    .line 66
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->setupTranslucentStatusBar()V

    .line 68
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcListActivity;->onPause()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mIsInForeground:Z

    .line 96
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->unregister()V

    .line 98
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 100
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcListActivity;->onResume()V

    .line 107
    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v3

    iget v4, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mThemeId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 108
    .local v1, isThemeChanged:Z
    :cond_0
    iget v3, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mHtcFontScale:F

    invoke-static {p0, v3}, Landroid/content/res/HtcConfiguration;->checkHtcFontscaleChanged(Landroid/content/Context;F)Z

    move-result v0

    .line 110
    .local v0, isFontScaleChanged:Z
    iget-boolean v3, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFontScaleChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isThemeChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/settings/framework/app/HtcInternalListActivity$1;

    invoke-direct {v4, p0}, Lcom/android/settings/framework/app/HtcInternalListActivity$1;-><init>(Lcom/android/settings/framework/app/HtcInternalListActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 128
    :cond_3
    iput-boolean v2, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mIsInForeground:Z

    .line 130
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v2, :cond_4

    .line 131
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v2, p0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 132
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v2}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->register()V

    .line 134
    :cond_4
    return-void
.end method

.method public onStatusBarTapEvent()V
    .locals 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity;->mIsInForeground:Z

    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0
.end method
