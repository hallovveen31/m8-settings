.class public Lcom/android/settings/applications/AppOpsSummary;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "AppOpsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static sPageTemplates:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;


# instance fields
.field protected mContentContainer:Landroid/view/ViewGroup;

.field protected mContext:Landroid/content/Context;

.field protected mCurPos:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mPageNames:[Ljava/lang/CharSequence;

.field protected mRootView:Landroid/view/View;

.field protected mViewPager:Lcom/htc/view/viewpager/HtcViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/applications/AppOpsSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppOpsSummary;->TAG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/applications/AppOpsSummary;->sPageTemplates:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    .line 71
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings/applications/AppOpsSummary;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->support()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-class v0, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getParentFragmentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->support()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const v0, 0x7f0c0c5f

    .line 170
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getParentFragmentTitleResId()I

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsSummary;->mInflater:Landroid/view/LayoutInflater;

    .line 119
    iget-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040055

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 120
    .local v2, rootView:Landroid/view/View;
    iput-object p2, p0, Lcom/android/settings/applications/AppOpsSummary;->mContentContainer:Landroid/view/ViewGroup;

    .line 121
    iput-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mRootView:Landroid/view/View;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mPageNames:[Ljava/lang/CharSequence;

    .line 125
    iget-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mContext:Landroid/content/Context;

    .line 129
    :cond_0
    const v4, 0x7f090012

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/view/viewpager/HtcViewPager;

    iput-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Lcom/htc/view/viewpager/HtcViewPager;

    .line 130
    new-instance v0, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsSummary;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;-><init>(Lcom/android/settings/applications/AppOpsSummary;Landroid/app/FragmentManager;)V

    .line 131
    .local v0, adapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;
    iget-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Lcom/htc/view/viewpager/HtcViewPager;

    invoke-virtual {v4, v0}, Lcom/htc/view/viewpager/HtcViewPager;->setAdapter(Lcom/htc/view/viewpager/HtcPagerAdapter;)V

    .line 132
    iget-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Lcom/htc/view/viewpager/HtcViewPager;

    invoke-virtual {v4, v0}, Lcom/htc/view/viewpager/HtcViewPager;->setOnPageChangeListener(Lcom/htc/view/viewpager/HtcViewPager$OnPageChangeListener;)V

    .line 134
    new-instance v3, Lcom/htc/view/tabbar/TabBar;

    iget-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/view/tabbar/TabBar;-><init>(Landroid/content/Context;)V

    .line 135
    .local v3, tabBar:Lcom/htc/view/tabbar/TabBar;
    new-instance v1, Lcom/htc/view/viewpager/HtcViewPager$LayoutParams;

    invoke-direct {v1}, Lcom/htc/view/viewpager/HtcViewPager$LayoutParams;-><init>()V

    .line 136
    .local v1, params:Lcom/htc/view/viewpager/HtcViewPager$LayoutParams;
    const/16 v4, 0x30

    iput v4, v1, Lcom/htc/view/viewpager/HtcViewPager$LayoutParams;->gravity:I

    .line 137
    const/4 v4, -0x1

    iput v4, v1, Lcom/htc/view/viewpager/HtcViewPager$LayoutParams;->width:I

    .line 138
    iget-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/view/tabbar/TabBar;->getBarHeight(Landroid/content/Context;)I

    move-result v4

    iput v4, v1, Lcom/htc/view/viewpager/HtcViewPager$LayoutParams;->height:I

    .line 139
    invoke-virtual {v3, v1}, Lcom/htc/view/tabbar/TabBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Lcom/htc/view/viewpager/HtcViewPager;

    invoke-virtual {v4, v3}, Lcom/htc/view/viewpager/HtcViewPager;->addView(Landroid/view/View;)V

    .line 146
    instance-of v4, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v4, :cond_1

    .line 147
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 150
    :cond_1
    return-object v2
.end method
