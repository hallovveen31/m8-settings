.class public Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.super Lcom/android/settings/framework/app/HtcPreferenceActivity;
.source "HtcInternalPreferenceActivity.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcIInternalHost;


# static fields
.field private static final STATUS_BAR_BACKGROUND_INDEX:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

.field private mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

.field private mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

.field private mHasHtcFooterBar:Z

.field private mHtcFontScale:F

.field private mIsSinglePane:Z

.field private mThemeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPreferenceActivity;-><init>()V

    .line 58
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->DEBUG:Z

    .line 60
    new-instance v0, Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/app/HtcActivityHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    .line 62
    iput-object v2, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    .line 71
    iput-object v2, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 75
    iput-boolean v1, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHasHtcFooterBar:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mIsSinglePane:Z

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHtcFontScale:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final applyHtcActionBar()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 405
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v4, :cond_1

    .line 407
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 409
    new-instance v4, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v4, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 412
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v4}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 414
    .local v1, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->initBackUpSettings(Lcom/htc/widget/ActionBarContainer;)V

    .line 416
    new-instance v3, Lcom/htc/widget/ActionBarText;

    invoke-direct {v3, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 417
    .local v3, mText:Lcom/htc/widget/ActionBarText;
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 420
    :cond_0
    invoke-virtual {v3, v6}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 422
    invoke-virtual {v1, v3}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 431
    .end local v1           #actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    .end local v3           #mText:Lcom/htc/widget/ActionBarText;
    :cond_1
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v2, builder:Ljava/lang/StringBuilder;
    const-string v4, "applyHtcActionBar() Failed!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n - Window.FEATURE_ACTION_BAR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/Window;->hasFeature(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 439
    sget-object v4, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local v2           #builder:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method private dumpKeyEvent(Ljava/lang/String;ILandroid/view/KeyEvent;)V
    .locals 2
    .parameter "apiName"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->log(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    instance-of v0, v0, Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->log(Ljava/lang/String;)V

    .line 707
    :goto_0
    return-void

    .line 704
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->log(Ljava/lang/String;)V

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getActionBarText()Lcom/htc/widget/ActionBarText;
    .locals 4

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 589
    .local v0, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->getChildCount()I

    move-result v2

    .line 590
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 591
    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/widget/ActionBarText;

    if-eqz v3, :cond_0

    .line 592
    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/ActionBarText;

    .line 595
    :goto_1
    return-object v3

    .line 590
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private final initFooterBar()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 614
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mIsSinglePane:Z

    .line 615
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, ":android:show_fragment"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, initialFragment:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/framework/app/HtcISupportFootBar$Stub;->supportFootBar(Ljava/lang/String;)Z

    move-result v1

    .line 619
    .local v1, supportFootBar:Z
    iget-boolean v2, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mIsSinglePane:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 620
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->requestWindowFeature(I)Z

    .line 621
    iput-boolean v3, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHasHtcFooterBar:Z

    .line 623
    :cond_1
    return-void

    .line 614
    .end local v0           #initialFragment:Ljava/lang/String;
    .end local v1           #supportFootBar:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 710
    sget-object v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void
.end method

.method private setupTranslucentStatusBar()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f020071

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x400

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 181
    const v5, 0x1020002

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 182
    .local v4, vg:Landroid/view/ViewGroup;
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 185
    sget-object v5, Lcom/android/settings/R$styleable;->myStylable:[I

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 186
    .local v3, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v3, v7, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 187
    .local v0, bgColor:I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 189
    .local v2, layerDrawable:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 190
    .local v1, colorDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    const v6, 0x2080001

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setBackgroundResource(I)V

    .line 194
    return-void
.end method


# virtual methods
.method public addCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->addCallback(Ljava/lang/Object;)V

    .line 371
    return-void
.end method

.method public final addSearchButtonToActionBarExt()Lcom/htc/widget/ActionBarItemView;
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addSearchButtonToActionBarExt(Landroid/view/View$OnClickListener;)Lcom/htc/widget/ActionBarItemView;

    move-result-object v0

    return-object v0
.end method

.method public final addSearchButtonToActionBarExt(Landroid/view/View$OnClickListener;)Lcom/htc/widget/ActionBarItemView;
    .locals 3
    .parameter "listener"

    .prologue
    .line 541
    new-instance v1, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v1, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 542
    .local v1, item:Lcom/htc/widget/ActionBarItemView;
    const v2, 0x20800c2

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 543
    invoke-virtual {v1, p1}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 547
    .local v0, container:Lcom/htc/widget/ActionBarContainer;
    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 548
    return-object v1
.end method

.method public addToggleButtonToActionBarExt(Lcom/htc/widget/HtcToggleButtonLight;)V
    .locals 4
    .parameter "actionBarSwitch"

    .prologue
    const/4 v3, -0x2

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    .line 497
    .local v0, actionBar:Lcom/htc/widget/ActionBarExt;
    if-nez v0, :cond_0

    .line 507
    :goto_0
    return-void

    .line 501
    :cond_0
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 502
    .local v1, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    invoke-virtual {v1, p1}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 506
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setMode(I)V

    goto :goto_0
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 384
    return-object p0
.end method

.method public getActivityHandlerWrapper()Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {v0, v1}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 393
    return-object p0
.end method

.method public final getHtcActionBar()Lcom/htc/widget/ActionBarExt;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v0, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->applyHtcActionBar()V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    return-object v0
.end method

.method public bridge synthetic getHtcListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcPreferenceActivity;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcPreferenceActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    return-object v0
.end method

.method public getNonUiHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getUiHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method protected initBackUpSettings(Lcom/htc/widget/ActionBarContainer;)V
    .locals 1
    .parameter "actionBarContainer"

    .prologue
    .line 448
    new-instance v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity$2;-><init>(Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;)V

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    return-void
.end method

.method public final isSinglePane()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mIsSinglePane:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 293
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 294
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcActivityHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 295
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 277
    const-string v0, "###"

    const-string v1, "onApplyThemeResource..."

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 280
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcPreferenceActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 281
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0xa

    .line 102
    invoke-static {p0}, Landroid/content/res/HtcConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v2, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHtcFontScale:F

    .line 107
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mThemeId:I

    .line 108
    iget v2, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mThemeId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->setTheme(I)V

    .line 113
    invoke-static {p0}, Lcom/android/settings/framework/app/HtcActivityManager;->applyGuestMode(Landroid/app/Activity;)Z

    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    const/4 v0, 0x0

    .line 119
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->initFooterBar()V

    .line 123
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 124
    new-instance v1, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    .end local v1           #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    invoke-direct {v1}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    .line 125
    .restart local v1       #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    const/16 v2, 0x100

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 127
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    const-string v2, ">> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".onCreate("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t mActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_1

    .line 139
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".onCreate("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_1
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_2

    .line 148
    const-string v2, ">> onCreate(...):applyHtcActionBar()\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t mActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->setupTranslucentStatusBar()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->applyHtcActionBar()V

    .line 161
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_3

    .line 162
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<< onCreate(...):applyHtcActionBar()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->log(Ljava/lang/String;)V

    .line 170
    :cond_3
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v2, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->onCreate(Landroid/os/Bundle;)V

    .line 171
    return-void
.end method

.method public onCreateInBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 304
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onDestroy()V

    .line 287
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcPreferenceActivity;->onDestroy()V

    .line 288
    return-void
.end method

.method public onDestroyInBackground()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public onDisplay()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public onDisplayInBackground()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 336
    return-void
.end method

.method public onHandleUiMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 332
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 655
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 656
    const-string v0, "onKeyDown"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->dumpKeyEvent(Ljava/lang/String;ILandroid/view/KeyEvent;)V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    const/4 v0, 0x1

    .line 663
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 668
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 669
    const-string v0, "onKeyLongPress"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->dumpKeyEvent(Ljava/lang/String;ILandroid/view/KeyEvent;)V

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    const/4 v0, 0x1

    .line 676
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcPreferenceActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 681
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 682
    const-string v0, "onKeyUp"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->dumpKeyEvent(Ljava/lang/String;ILandroid/view/KeyEvent;)V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    const/4 v0, 0x1

    .line 689
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcPreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcPreferenceActivity;->onPause()V

    .line 256
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPause()V

    .line 257
    return-void
.end method

.method public onPauseInBackground()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcPreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPostCreate(Landroid/os/Bundle;)V

    .line 201
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcPreferenceActivity;->onPostResume()V

    .line 246
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPostResume()V

    .line 247
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcPreferenceActivity;->onRestart()V

    .line 212
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onRestart()V

    .line 213
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcPreferenceActivity;->onResume()V

    .line 218
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->onResume()V

    .line 221
    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    iget v3, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mThemeId:I

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 222
    .local v1, isThemeChanged:Z
    :cond_0
    iget v2, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHtcFontScale:F

    invoke-static {p0, v2}, Landroid/content/res/HtcConfiguration;->checkHtcFontscaleChanged(Landroid/content/Context;F)Z

    move-result v0

    .line 224
    .local v0, isFontScaleChanged:Z
    iget-boolean v2, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 225
    sget-object v2, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFontScaleChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v2, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isThemeChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 230
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity$1;-><init>(Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 241
    :cond_3
    return-void
.end method

.method public onResumeInBackground()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcPreferenceActivity;->onStart()V

    .line 206
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onStart()V

    .line 207
    return-void
.end method

.method public onStartInBackground()V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onStop()V

    .line 262
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcPreferenceActivity;->onStop()V

    .line 263
    return-void
.end method

.method public onStopInBackground()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public requestHandlers()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->requestHandlers()V

    .line 341
    return-void
.end method

.method public requestHandlers(Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;)V
    .locals 1
    .parameter "instance"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->requestHandlers(Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;)V

    .line 346
    return-void
.end method

.method public resetFragmentKeyListener()V
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    .line 651
    return-void
.end method

.method public runInNonUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->runInNonUIThread(Ljava/lang/Runnable;)V

    .line 366
    return-void
.end method

.method public runInUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->runInUIThread(Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method

.method public setFragmentKeyListener(Landroid/view/KeyEvent$Callback;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 638
    if-eqz p1, :cond_0

    .line 639
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    .line 641
    :cond_0
    return-void
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "secondaryTitle"

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getActionBarText()Lcom/htc/widget/ActionBarText;

    move-result-object v0

    .line 571
    .local v0, mText:Lcom/htc/widget/ActionBarText;
    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    .line 574
    :cond_0
    return-void
.end method

.method public setSecondaryTitleVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getActionBarText()Lcom/htc/widget/ActionBarText;

    move-result-object v0

    .line 581
    .local v0, mText:Lcom/htc/widget/ActionBarText;
    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 584
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 553
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcPreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 556
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 557
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getActionBarText()Lcom/htc/widget/ActionBarText;

    move-result-object v0

    .line 559
    .local v0, titleView:Lcom/htc/widget/ActionBarText;
    if-eqz v0, :cond_0

    .line 560
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 563
    .end local v0           #titleView:Lcom/htc/widget/ActionBarText;
    :cond_0
    return-void
.end method
