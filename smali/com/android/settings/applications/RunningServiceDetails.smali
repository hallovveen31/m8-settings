.class public Lcom/android/settings/applications/RunningServiceDetails;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;,
        Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final DIALOG_CONFIRM_STOP:I = 0x1

.field static final KEY_BACKGROUND:Ljava/lang/String; = "background"

.field static final KEY_PROCESS:Ljava/lang/String; = "process"

.field static final KEY_UID:Ljava/lang/String; = "uid"

.field static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field static final TAG:Ljava/lang/String; = "Settings:RunningServicesDetails"


# instance fields
.field final mActiveDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;",
            ">;"
        }
    .end annotation
.end field

.field mAllDetails:Landroid/view/ViewGroup;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mLastServiceDividerView:Landroid/view/View;

.field mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

.field mNumProcesses:I

.field mNumServices:I

.field mProcessName:Ljava/lang/String;

.field mProcessesHeader:Lcom/htc/widget/HtcListItemSeparator;

.field mRootView:Landroid/view/View;

.field mServicesHeader:Lcom/htc/widget/HtcListItemSeparator;

.field mShowBackground:Z

.field mSnippet:Landroid/view/ViewGroup;

.field mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

.field mSnippetViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

.field mState:Lcom/android/settings/applications/RunningState;

.field mUid:I

.field mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/applications/RunningServiceDetails;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/applications/RunningServiceDetails;->DEBUG:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Settings:RunningServicesDetails"

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showConfirmStopDialog(Landroid/content/ComponentName;)V
    .locals 5

    sget-boolean v3, Lcom/android/settings/applications/RunningServiceDetails;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "\n - isResumed(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - isVisible(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Fragment;->isVisible()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - isRemoving(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - isDetached(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Fragment;->isDetached()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v3, "\n - getActivity().isFinishing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/applications/RunningServiceDetails;->log(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v3

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/settings/applications/RunningServiceDetails;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore showConfirmStopDialog("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/applications/RunningServiceDetails;->log(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v3, 0x1

    invoke-static {v3, p1}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "confirmstop"

    invoke-virtual {v1, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method addDetailViews()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v3, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Lcom/htc/widget/HtcListItemSeparator;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Lcom/htc/widget/HtcListItemSeparator;

    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Lcom/htc/widget/HtcListItemSeparator;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Lcom/htc/widget/HtcListItemSeparator;

    :cond_2
    iput v6, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumProcesses:I

    iput v6, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumServices:I

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v3, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/settings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v3, v6, v5}, Lcom/android/settings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v3, v5, v5}, Lcom/android/settings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    :cond_6
    iget v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumServices:I

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    const v4, 0x7f09004e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumProcesses:I

    if-lez v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mLastServiceDividerView:Landroid/view/View;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mLastServiceDividerView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method addDetailsViews(Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$ServiceItem;

    invoke-virtual {p0, v2, p1, v3, v3}, Lcom/android/settings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    const/4 v5, 0x0

    iget v2, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eq v2, v6, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, p1, v4, v2}, Lcom/android/settings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    :cond_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :goto_2
    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    if-gez v0, :cond_4

    iget-object v1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    :goto_3
    if-eqz v1, :cond_5

    iget v2, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v2, :cond_5

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object v1, v2

    goto :goto_3

    :cond_5
    if-gez v0, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/RunningServiceDetails;->addProcessDetailsView(Lcom/android/settings/applications/RunningState$ProcessItem;Z)V

    goto :goto_4

    :cond_6
    move v2, v4

    goto :goto_5
.end method

.method addProcessDetailsView(Lcom/android/settings/applications/RunningState$ProcessItem;Z)V
    .locals 14

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->addProcessesHeader()V

    new-instance v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    iget-object v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f0400de

    iget-object v12, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iget-object v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v6, v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    new-instance v10, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v10, v6}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v10, v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v10, v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v11, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v12, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, p1, v12}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v10

    iput-object v10, v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    const v10, 0x7f0901e6

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem;

    if-eqz v3, :cond_0

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    :cond_0
    const v10, 0x7f0901cd

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v10, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eq v10, v11, :cond_2

    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    if-eqz p2, :cond_3

    const v10, 0x7f0c0fd4

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    const/4 v4, 0x0

    iget-object v7, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    iget v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v10, :pswitch_data_0

    :cond_4
    :goto_1
    if-eqz v9, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-virtual {v10, v9, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_0
    const v9, 0x7f0c0fd6

    iget-object v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v10, :cond_4

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-static {v10, v11, v5}, Lcom/android/settings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_1

    :pswitch_1
    const v9, 0x7f0c0fd5

    iget-object v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v10, :cond_4

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-static {v10, v11, v8}, Lcom/android/settings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v10

    goto :goto_1

    :catch_1
    move-exception v10

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method addProcessesHeader()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumProcesses:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/HtcListItemSeparator;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListItemSeparator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Lcom/htc/widget/HtcListItemSeparator;

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Lcom/htc/widget/HtcListItemSeparator;

    const v1, 0x7f0c0fcd

    invoke-virtual {v0, v2, v1}, Lcom/htc/widget/HtcListItemSeparator;->setText(II)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Lcom/htc/widget/HtcListItemSeparator;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Lcom/htc/widget/HtcListItemSeparator;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumProcesses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumProcesses:I

    return-void
.end method

.method addServiceDetailsView(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V
    .locals 12

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->addServicesHeader()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    move-object v0, p1

    :goto_1
    new-instance v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    iget-object v8, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400df

    iget-object v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v7, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    iput-object p1, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    new-instance v8, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v8, v7}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v9, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9, v0, v10}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v8

    iput-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    if-nez p4, :cond_5

    const v8, 0x7f0901cc

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_2
    if-eqz p1, :cond_2

    iget-object v8, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v9, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    :cond_2
    const v8, 0x7f0901cd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0900f3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    const v8, 0x7f0900f4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    if-eqz p3, :cond_6

    iget v8, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eq v8, v9, :cond_6

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f0901ce

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v8, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    iget v8, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eq v8, v9, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->addProcessesHeader()V

    goto/16 :goto_0

    :cond_4
    move-object v0, p2

    goto/16 :goto_1

    :cond_5
    const v8, 0x7f0901e6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem;

    if-eqz v5, :cond_1

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    iget-object v8, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v8, v8, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v10, v10, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    iget-object v11, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_b

    const v8, 0x7f0c0fcf

    :goto_5
    invoke-virtual {v10, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const v9, 0x1040408

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "send_action_app_error"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v8, v9, v10}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    iget-object v9, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    :goto_6
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_7
    const v8, 0x7f0901cf

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/applications/RunningServiceDetails;->mLastServiceDividerView:Landroid/view/View;

    goto/16 :goto_3

    :cond_7
    iget-boolean v8, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v8, :cond_8

    const v8, 0x7f0c0fd2

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_8
    iget-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_9

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v8, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0c0fd3

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v8

    goto/16 :goto_4

    :cond_9
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz p1, :cond_a

    const v8, 0x7f0c0fd0

    :goto_8
    invoke-virtual {v9, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_a
    const v8, 0x7f0c0fd1

    goto :goto_8

    :cond_b
    const v8, 0x7f0c0fce

    goto/16 :goto_5

    :cond_c
    const/4 v8, 0x0

    goto :goto_6

    :cond_d
    iget-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_7
.end method

.method addServicesHeader()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumServices:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/HtcListItemSeparator;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListItemSeparator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Lcom/htc/widget/HtcListItemSeparator;

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Lcom/htc/widget/HtcListItemSeparator;

    const v1, 0x7f0c0fcc

    invoke-virtual {v0, v2, v1}, Lcom/htc/widget/HtcListItemSeparator;->setText(II)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Lcom/htc/widget/HtcListItemSeparator;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Lcom/htc/widget/HtcListItemSeparator;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumServices:I

    return-void
.end method

.method ensureData()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mHaveData:Z

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/RunningState;->resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->waitForData()V

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/RunningServiceDetails;->refreshUi(Z)V

    :cond_0
    return-void
.end method

.method findMergedItem()Z
    .locals 6

    const/4 v1, 0x0

    iget-boolean v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/settings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v4, v2, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUserId:I

    if-eq v4, v5, :cond_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/settings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUid:I

    if-ltz v4, :cond_3

    iget-object v4, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v4, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    iget v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUid:I

    if-ne v4, v5, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    move-object v1, v2

    :cond_5
    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eq v4, v1, :cond_6

    iput-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    const/4 v4, 0x1

    :goto_2
    return v4

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public finish()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningServiceDetails$1;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    const v0, 0x7f0c0f49

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUid:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUserId:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "process"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mShowBackground:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    const v2, 0x2080001

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    const v2, 0x7f0400dd

    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const v2, 0x7f0901cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    const v3, 0x7f0901e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->ensureData()V

    return-object v1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mHaveData:Z

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->refreshUi(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->refreshUi(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->ensureData()V

    return-void
.end method

.method refreshUi(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->findMergedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->addDetailViews()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v1, 0x7f0c0fcb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->finish()V

    goto :goto_1
.end method

.method updateTimes()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v1, v1, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
