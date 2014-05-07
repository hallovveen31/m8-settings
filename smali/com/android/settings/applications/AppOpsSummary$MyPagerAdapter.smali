.class public Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;
.super Lcom/htc/view/viewpager/HtcFragmentPagerAdapter;
.source "AppOpsSummary.java"

# interfaces
.implements Lcom/htc/view/viewpager/HtcViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppOpsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppOpsSummary;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/AppOpsSummary;Landroid/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;->this$0:Lcom/android/settings/applications/AppOpsSummary;

    invoke-direct {p0, p2}, Lcom/htc/view/viewpager/HtcFragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    sget-object v0, Lcom/android/settings/applications/AppOpsSummary;->sPageTemplates:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 2

    new-instance v0, Lcom/android/settings/applications/AppOpsCategory;

    sget-object v1, Lcom/android/settings/applications/AppOpsSummary;->sPageTemplates:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppOpsCategory;-><init>(Lcom/android/settings/applications/AppOpsState$OpsTemplate;)V

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;->this$0:Lcom/android/settings/applications/AppOpsSummary;

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsSummary;->mPageNames:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;->this$0:Lcom/android/settings/applications/AppOpsSummary;

    iput p1, v0, Lcom/android/settings/applications/AppOpsSummary;->mCurPos:I

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/applications/AppOpsSummary;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onPageSelected, mCurPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;->this$0:Lcom/android/settings/applications/AppOpsSummary;

    iget v2, v2, Lcom/android/settings/applications/AppOpsSummary;->mCurPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
