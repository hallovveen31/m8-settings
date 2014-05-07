.class public Lcom/android/settings/applications/ProcessStatsDetail;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "ProcessStatsDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ACTION_FORCE_STOP:I = 0x1

.field public static final EXTRA_ENTRY:Ljava/lang/String; = "entry"

.field public static final EXTRA_MAX_WEIGHT:Ljava/lang/String; = "max_weight"

.field public static final EXTRA_TOTAL_TIME:Ljava/lang/String; = "total_time"

.field public static final EXTRA_USE_USS:Ljava/lang/String; = "use_uss"

.field private static final TAG:Ljava/lang/String; = "ProcessStatsDetail"

.field static final sServiceCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry$Service;",
            ">;"
        }
    .end annotation
.end field

.field static final sServicePkgCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry$Service;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mDetailsParent:Landroid/view/ViewGroup;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEntry:Lcom/android/settings/applications/ProcStatsEntry;

.field private mForceStopButton:Landroid/widget/Button;

.field private mMaxWeight:J

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReportButton:Landroid/widget/Button;

.field private mRootView:Landroid/view/View;

.field private mServicesParent:Landroid/view/ViewGroup;

.field private mTitleView:Landroid/widget/TextView;

.field private mTotalTime:J

.field private mTwoButtonsPanel:Landroid/view/ViewGroup;

.field private mUseUss:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 300
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->sServiceCompare:Ljava/util/Comparator;

    .line 313
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->sServicePkgCompare:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    .line 383
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ProcessStatsDetail$3;-><init>(Lcom/android/settings/applications/ProcessStatsDetail;)V

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ProcessStatsDetail;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 8
    .parameter "parent"
    .parameter "label"
    .parameter "value"
    .parameter "bShowDivider"

    .prologue
    const/16 v7, 0x8

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 252
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040029

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 254
    .local v1, item:Landroid/view/ViewGroup;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 257
    const v5, 0x7f090008

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 259
    .local v3, textView:Lcom/htc/widget/HtcListItem2LineText;
    const v5, 0x7f09004d

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineStamp;

    .line 262
    .local v2, stampView:Lcom/htc/widget/HtcListItem2LineStamp;
    invoke-virtual {v3, p2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 264
    invoke-virtual {v2, p3}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryTextVisibility(I)V

    .line 267
    if-nez p4, :cond_0

    .line 268
    const v5, 0x7f09004e

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 269
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 270
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 279
    .end local v4           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private addPackageHeaderItem(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 9
    .parameter "parent"
    .parameter "packageName"

    .prologue
    const/4 v8, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 213
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f0400ff

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 215
    .local v4, item:Landroid/view/ViewGroup;
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 220
    const v6, 0x7f0901e6

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem;

    .line 221
    .local v5, itemContainer:Lcom/htc/widget/HtcListItem;
    if-eqz v5, :cond_0

    .line 222
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    .line 225
    :cond_0
    const v6, 0x7f090029

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemColorIcon;

    .line 226
    .local v1, icon:Lcom/htc/widget/HtcListItemColorIcon;
    const v6, 0x7f090008

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 228
    .local v3, infoView:Lcom/htc/widget/HtcListItem2LineText;
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 229
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :goto_0
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 235
    invoke-virtual {v3, p2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 248
    return-void

    .line 231
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private checkForceStop()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 391
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 413
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 400
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 401
    .local v8, info:Landroid/content/pm/ApplicationInfo;
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x20

    and-int/2addr v0, v3

    if-nez v0, :cond_3

    .line 402
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v8           #info:Landroid/content/pm/ApplicationInfo;
    :cond_3
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 408
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget v3, v3, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    const-string v0, "android.intent.extra.user_handle"

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget v3, v3, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 404
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private createDetails()V
    .locals 14

    .prologue
    .line 126
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v9, v9, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    long-to-double v9, v9

    iget-wide v11, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mMaxWeight:J

    long-to-double v11, v11

    div-double/2addr v9, v11

    const-wide/high16 v11, 0x4059

    mul-double v6, v9, v11

    .line 128
    .local v6, percentOfWeight:D
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v0, v9

    .line 129
    .local v0, appLevel:I
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v10, v10, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    iget-wide v12, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/settings/applications/ProcessStatsDetail;->makePercentString(Landroid/content/res/Resources;JJ)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, appLevelText:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v10, 0x7f09022e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem;

    .line 136
    .local v4, headerView:Lcom/htc/widget/HtcListItem;
    if-eqz v4, :cond_0

    .line 137
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    .line 140
    :cond_0
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v10, 0x7f09022f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 141
    .local v3, headerDivider:Landroid/view/View;
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v10, 0x7f090029

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItemColorIcon;

    .line 142
    .local v5, icon:Lcom/htc/widget/HtcListItemColorIcon;
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v10, 0x7f0900d9

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcListItem2LineTextProgressBar;

    .line 144
    .local v8, progressView:Lcom/htc/widget/HtcListItem2LineTextProgressBar;
    invoke-virtual {v8}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcProgressBar;

    .line 146
    .local v2, bar:Lcom/htc/widget/HtcProgressBar;
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v9, v9, Lcom/android/settings/applications/ProcStatsEntry;->mUiBaseLabel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->setPrimaryText(Ljava/lang/String;)V

    .line 147
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->setSecondaryTextVisibility(I)V

    .line 148
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v9, v9, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->setSecondaryText(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->setSecondaryStampText(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcProgressBar;->setProgress(I)V

    .line 151
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v9, v9, Lcom/android/settings/applications/ProcStatsEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_1

    .line 152
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v9, v9, Lcom/android/settings/applications/ProcStatsEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_1
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v10, 0x7f090230

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    .line 172
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v10, 0x7f0900f4

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    .line 173
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v10, 0x7f0900f3

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mReportButton:Landroid/widget/Button;

    .line 174
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 175
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mReportButton:Landroid/widget/Button;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v10, 0x7f090172

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDetailsParent:Landroid/view/ViewGroup;

    .line 178
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v10, 0x7f09019d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServicesParent:Landroid/view/ViewGroup;

    .line 180
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->fillDetailsSection()V

    .line 181
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->fillServicesSection()V

    .line 183
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget v9, v9, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    const/16 v10, 0x2710

    if-lt v9, v10, :cond_3

    .line 184
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    const v10, 0x7f0c0f5d

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    .line 185
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 186
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 196
    :cond_2
    :goto_0
    return-void

    .line 189
    :cond_3
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 191
    if-eqz v3, :cond_2

    .line 192
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private doAction(I)V
    .locals 1
    .parameter "action"

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .line 204
    .local v0, pa:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    packed-switch p1, :pswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 206
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->killProcesses()V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private fillDetailsSection()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x400

    const/4 v6, 0x1

    .line 282
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c10ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mUseUss:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->mAvgUss:J

    :goto_0
    mul-long/2addr v1, v7

    invoke-static {v5, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/applications/ProcessStatsDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 285
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c1100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mUseUss:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->mMaxUss:J

    :goto_1
    mul-long/2addr v1, v7

    invoke-static {v5, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/applications/ProcessStatsDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 290
    const/4 v0, 0x1

    .line 291
    .local v0, bShowDivider:Z
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c1101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    iget-wide v6, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/settings/applications/ProcessStatsDetail;->makePercentString(Landroid/content/res/Resources;JJ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/settings/applications/ProcessStatsDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 298
    return-void

    .line 282
    .end local v0           #bShowDivider:Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->mAvgPss:J

    goto :goto_0

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->mMaxPss:J

    goto :goto_1
.end method

.method private fillServicesSection()V
    .locals 24

    .prologue
    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    if-lez v17, :cond_6

    .line 331
    const/4 v4, 0x0

    .line 333
    .local v4, addPackageSections:Z
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v14, servicePkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;>;"
    const/4 v7, 0x0

    .local v7, ip:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_0

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 338
    .local v15, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    sget-object v17, Lcom/android/settings/applications/ProcessStatsDetail;->sServiceCompare:Ljava/util/Comparator;

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 339
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 341
    .end local v15           #services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/applications/ProcStatsEntry$Service;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 343
    :cond_1
    const/4 v4, 0x1

    .line 345
    sget-object v17, Lcom/android/settings/applications/ProcessStatsDetail;->sServicePkgCompare:Ljava/util/Comparator;

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 347
    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_7

    .line 348
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 349
    .restart local v15       #services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    if-eqz v4, :cond_3

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mServicesParent:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/applications/ProcStatsEntry$Service;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/ProcessStatsDetail;->addPackageHeaderItem(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 352
    :cond_3
    const/4 v8, 0x0

    .local v8, is:I
    :goto_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_5

    .line 353
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/ProcStatsEntry$Service;

    .line 354
    .local v13, service:Lcom/android/settings/applications/ProcStatsEntry$Service;
    iget-object v9, v13, Lcom/android/settings/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    .line 355
    .local v9, label:Ljava/lang/String;
    const/16 v17, 0x2e

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 356
    .local v16, tail:I
    if-ltz v16, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 357
    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 359
    :cond_4
    iget-wide v5, v13, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    .line 360
    .local v5, duration:J
    long-to-double v0, v5

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    const-wide/high16 v19, 0x4059

    mul-double v10, v17, v19

    .line 361
    .local v10, percentOfTime:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mServicesParent:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c1289

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/android/settings/applications/ProcessStatsDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 352
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 347
    .end local v5           #duration:J
    .end local v9           #label:Ljava/lang/String;
    .end local v10           #percentOfTime:D
    .end local v13           #service:Lcom/android/settings/applications/ProcStatsEntry$Service;
    .end local v16           #tail:I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 367
    .end local v4           #addPackageSections:Z
    .end local v7           #ip:I
    .end local v8           #is:I
    .end local v14           #servicePkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;>;"
    .end local v15           #services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f090231

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/htc/widget/HtcListItemSeparator;

    .line 369
    .local v12, separator:Lcom/htc/widget/HtcListItemSeparator;
    if-eqz v12, :cond_7

    .line 370
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcListItemSeparator;->setVisibility(I)V

    .line 374
    .end local v12           #separator:Lcom/htc/widget/HtcListItemSeparator;
    :cond_7
    return-void
.end method

.method private killProcesses()V
    .locals 3

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 379
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->checkForceStop()V

    .line 381
    return-void
.end method

.method public static makePercentString(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .locals 7
    .parameter "res"
    .parameter "amount"
    .parameter "total"

    .prologue
    .line 86
    long-to-double v2, p1

    long-to-double v4, p3

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059

    mul-double v0, v2, v4

    .line 87
    .local v0, percent:D
    const v2, 0x7f0c1289

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    const-class v0, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 422
    const v0, 0x7f0c10f7

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/ProcessStatsDetail;->doAction(I)V

    .line 200
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "entry"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsEntry;

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    .line 97
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/ProcStatsEntry;->retrieveUiData(Landroid/content/pm/PackageManager;)V

    .line 98
    const-string v1, "use_uss"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mUseUss:Z

    .line 99
    const-string v1, "max_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mMaxWeight:J

    .line 100
    const-string v1, "total_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    .line 101
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 106
    const v1, 0x7f0400fd

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, view:Landroid/view/View;
    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    .line 110
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->createDetails()V

    .line 111
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onPause()V

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onResume()V

    .line 117
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->checkForceStop()V

    .line 118
    return-void
.end method
