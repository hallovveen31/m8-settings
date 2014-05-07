.class public Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAbsPrintJobSettingsFragment.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcISupportFootBar;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EXTRA_PRINT_JOB_ID:Ljava/lang/String; = "EXTRA_PRINT_JOB_ID"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPrintCancelButton:Lcom/htc/widget/HtcFooterButton;

.field private mPrintJob:Landroid/print/PrintJob;

.field private mPrintManager:Landroid/print/PrintManager;

.field private mPrintRestartButton:Lcom/htc/widget/HtcFooterButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;)Landroid/print/PrintJob;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->getPrintJob()Landroid/print/PrintJob;

    move-result-object v0

    return-object v0
.end method

.method private getPrintJob()Landroid/print/PrintJob;
    .locals 5

    iget-object v2, p0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->mPrintJob:Landroid/print/PrintJob;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->mPrintJob:Landroid/print/PrintJob;

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/print/PrintJobId;->unflattenFromString(Ljava/lang/String;)Landroid/print/PrintJobId;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPrintJob()\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - extra:EXTRA_PRINT_JOB_ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - printJobId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->getPrintManager()Landroid/print/PrintManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/print/PrintManager;->getPrintJob(Landroid/print/PrintJobId;)Landroid/print/PrintJob;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->mPrintJob:Landroid/print/PrintJob;

    iget-object v2, p0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->mPrintJob:Landroid/print/PrintJob;

    goto :goto_0
.end method

.method private getPrintManager()Landroid/print/PrintManager;
    .locals 3

    iget-object v1, p0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "print"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    goto :goto_0
.end method


# virtual methods
.method protected getPrintCancelButton(Landroid/content/Context;)Lcom/htc/widget/HtcFooterButton;
    .locals 2

    iget-object v1, p0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->mPrintCancelButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->mPrintCancelButton:Lcom/htc/widget/HtcFooterButton;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c10a7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment$1;-><init>(Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->mPrintCancelButton:Lcom/htc/widget/HtcFooterButton;

    goto :goto_0
.end method

.method protected getPrintRestartButton(Landroid/content/Context;)Lcom/htc/widget/HtcFooterButton;
    .locals 2

    iget-object v1, p0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->mPrintRestartButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->mPrintRestartButton:Lcom/htc/widget/HtcFooterButton;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c10a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment$2;-><init>(Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->mPrintRestartButton:Lcom/htc/widget/HtcFooterButton;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/htc/widget/HtcFooterButton;

    const/4 v4, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->getPrintCancelButton(Landroid/content/Context;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->getPrintRestartButton(Landroid/content/Context;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v0, v3}, Lcom/android/settings/framework/app/HtcISupportFootBar$Stub;->applyFooterBar(Landroid/app/Activity;Landroid/view/View;[Lcom/htc/widget/HtcFooterButton;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 9

    const/16 v8, 0xa

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->getPrintJob()Landroid/print/PrintJob;

    move-result-object v3

    const/16 v1, 0x8

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v3}, Landroid/print/PrintJob;->isFailed()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    :cond_1
    sget-boolean v5, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->DEBUG:Z

    if-eqz v5, :cond_2

    sget-object v6, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume()\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " - printJob: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " - cancelButtonVisibility: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_4

    const-string v5, "VISIBLE"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " - restartButtonVisibility: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v4, :cond_5

    const-string v5, "VISIBLE"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->getPrintCancelButton(Landroid/content/Context;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->getPrintRestartButton(Landroid/content/Context;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v1, :cond_3

    if-nez v4, :cond_6

    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    const-string v5, "GONE"

    goto :goto_0

    :cond_5
    const-string v5, "GONE"

    goto :goto_1

    :cond_6
    const/16 v6, 0x8

    goto :goto_2
.end method
