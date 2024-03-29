.class public Lcom/android/settings/SetFullBackupPassword;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "SetFullBackupPassword.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcISupportFootBar;


# static fields
.field static final TAG:Ljava/lang/String; = "SetFullBackupPassword"


# instance fields
.field mBackupManager:Landroid/app/backup/IBackupManager;

.field mButtonListener:Landroid/view/View$OnClickListener;

.field mCancel:Landroid/widget/Button;

.field mConfirmNewPw:Lcom/htc/widget/HtcAutoCompleteTextView;

.field mCurrentPw:Lcom/htc/widget/HtcAutoCompleteTextView;

.field mNewPw:Lcom/htc/widget/HtcAutoCompleteTextView;

.field mSet:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    new-instance v0, Lcom/android/settings/SetFullBackupPassword$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SetFullBackupPassword$1;-><init>(Lcom/android/settings/SetFullBackupPassword;)V

    iput-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/SetFullBackupPassword;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SetFullBackupPassword;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, p2}, Landroid/app/backup/IBackupManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "SetFullBackupPassword"

    const-string v2, "Unable to communicate with backup manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    const v0, 0x7f0c1029

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const-string v4, "backup"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SetFullBackupPassword;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-nez p2, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const v4, 0x2080001

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const v4, 0x7f0400e1

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0900e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcOverlapLayout;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcOverlapLayout;->isActionBarVisible(Z)V

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcOverlapLayout;->setInsetStatusBar(Z)V

    const v4, 0x7f0901d0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAutoCompleteTextView;

    iput-object v4, p0, Lcom/android/settings/SetFullBackupPassword;->mCurrentPw:Lcom/htc/widget/HtcAutoCompleteTextView;

    const v4, 0x7f0901d1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAutoCompleteTextView;

    iput-object v4, p0, Lcom/android/settings/SetFullBackupPassword;->mNewPw:Lcom/htc/widget/HtcAutoCompleteTextView;

    const v4, 0x7f0901d2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAutoCompleteTextView;

    iput-object v4, p0, Lcom/android/settings/SetFullBackupPassword;->mConfirmNewPw:Lcom/htc/widget/HtcAutoCompleteTextView;

    iget-object v4, p0, Lcom/android/settings/SetFullBackupPassword;->mCurrentPw:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAutoCompleteTextView;->setMode(I)V

    iget-object v4, p0, Lcom/android/settings/SetFullBackupPassword;->mNewPw:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAutoCompleteTextView;->setMode(I)V

    iget-object v4, p0, Lcom/android/settings/SetFullBackupPassword;->mConfirmNewPw:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAutoCompleteTextView;->setMode(I)V

    const v4, 0x7f0901d3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    const v4, 0x7f0901d4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    const v4, 0x7f09015f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooter;

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooter;->ReverseLandScapeSequence(Z)V

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->isSinglePane()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    :cond_2
    const v4, 0x7f0c1287

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
