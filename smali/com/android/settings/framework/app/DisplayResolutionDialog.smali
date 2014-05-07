.class public Lcom/android/settings/framework/app/DisplayResolutionDialog;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "DisplayResolutionDialog.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDefItem:I

.field protected mHtcAlert:Lcom/htc/app/HtcAlertController;

.field protected mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

.field private mItems:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Display_resolution_dialog"

    sput-object v0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/app/DisplayResolutionDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/framework/app/DisplayResolutionDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/settings/framework/app/DisplayResolutionDialog;->resolveIntent()V

    new-instance v1, Lcom/htc/app/HtcAlertController;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/app/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mHtcAlert:Lcom/htc/app/HtcAlertController;

    new-instance v1, Lcom/htc/app/HtcAlertController$AlertParams;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0776

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    iget-object v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mItems:[Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    iput v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    const v1, 0x7f0c059f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/settings/framework/app/DisplayResolutionDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/app/DisplayResolutionDialog$1;-><init>(Lcom/android/settings/framework/app/DisplayResolutionDialog;)V

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/settings/framework/app/DisplayResolutionDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/app/DisplayResolutionDialog$2;-><init>(Lcom/android/settings/framework/app/DisplayResolutionDialog;)V

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/app/DisplayResolutionDialog;->setupAlert(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "com.htc.content.intent.extra.Extra_DEF_TYPE"

    iget v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected resolveIntent()V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.htc.content.intent.action.Resolution_dialog"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const-string v1, "com.htc.content.intent.extra.Extra_DEF_TYPE"

    iget v2, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    :cond_0
    iget v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    if-ne v4, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_resolution_type"

    iget v3, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    :cond_1
    iget v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    if-ne v4, v1, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    :cond_2
    return-void
.end method

.method protected setupAlert(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mHtcAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcAlertController$AlertParams;->apply(Lcom/htc/app/HtcAlertController;)V

    iget-object v0, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mHtcAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0}, Lcom/htc/app/HtcAlertController;->installContent()V

    if-eqz p1, :cond_0

    const-string v0, "com.htc.content.intent.extra.Extra_DEF_TYPE"

    iget v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    :cond_0
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    :cond_1
    return-void
.end method
