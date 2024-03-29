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

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/applications/AppOpsSummary;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->support()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getParentFragmentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->support()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0c5f

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getParentFragmentTitleResId()I

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    iput-object p1, p0, Lcom/android/settings/applications/AppOpsSummary;->mInflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040055

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object p2, p0, Lcom/android/settings/applications/AppOpsSummary;->mContentContainer:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mPageNames:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mContext:Landroid/content/Context;

    :cond_0
    const v4, 0x7f090012

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/view/viewpager/HtcViewPager;

    iput-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Lcom/htc/view/viewpager/HtcViewPager;

    new-instance v0, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;-><init>(Lcom/android/settings/applications/AppOpsSummary;Landroid/app/FragmentManager;)V

    iget-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Lcom/htc/view/viewpager/HtcViewPager;

    invoke-virtual {v4, v0}, Lcom/htc/view/viewpager/HtcViewPager;->setAdapter(Lcom/htc/view/viewpager/HtcPagerAdapter;)V

    iget-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Lcom/htc/view/viewpager/HtcViewPager;

    invoke-virtual {v4, v0}, Lcom/htc/view/viewpager/HtcViewPager;->setOnPageChangeListener(Lcom/htc/view/viewpager/HtcViewPager$OnPageChangeListener;)V

    new-instance v3, Lcom/htc/view/tabbar/TabBar;

    iget-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/view/tabbar/TabBar;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/htc/view/viewpager/HtcViewPager$LayoutParams;

    invoke-direct {v1}, Lcom/htc/view/viewpager/HtcViewPager$LayoutParams;-><init>()V

    const/16 v4, 0x30

    iput v4, v1, Lcom/htc/view/viewpager/HtcViewPager$LayoutParams;->gravity:I

    const/4 v4, -0x1

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/view/tabbar/TabBar;->getBarHeight(Landroid/content/Context;)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Lcom/htc/view/viewpager/HtcViewPager;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    instance-of v4, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_1
    return-object v2
.end method
