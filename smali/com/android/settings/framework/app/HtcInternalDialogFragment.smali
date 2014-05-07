.class public abstract Lcom/android/settings/framework/app/HtcInternalDialogFragment;
.super Landroid/app/DialogFragment;
.source "HtcInternalDialogFragment.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

.field private mContext:Landroid/content/Context;

.field private mExtraCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mExtraDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mExtraNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mExtraPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    new-instance v0, Lcom/android/settings/framework/app/HtcInternalDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment$1;-><init>(Lcom/android/settings/framework/app/HtcInternalDialogFragment;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/settings/framework/app/HtcInternalDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment$2;-><init>(Lcom/android/settings/framework/app/HtcInternalDialogFragment;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/app/HtcInternalDialogFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mExtraPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/app/HtcInternalDialogFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mExtraNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getCustomMessage()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->getCustomMessageRes()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract getCustomMessageRes()I
.end method

.method protected getCustomNegativeButtonLabel()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->getCustomNegativeButtonLabelRes()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getCustomNegativeButtonLabelRes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getCustomPositiveButtonLabel()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->getCustomPositiveButtonLabelRes()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getCustomPositiveButtonLabelRes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->getCustomTitleRes()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract getCustomTitleRes()I
.end method

.method public final getTagInfo()Lcom/android/settings/framework/util/log/HtcLog$TagInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mExtraCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mExtraCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onCreateBuilder(Landroid/os/Bundle;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 3

    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->getCustomTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->getCustomMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->supportPositiveButton()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->getCustomPositiveButtonLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->supportNegativeButton()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->getCustomNegativeButtonLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    :cond_1
    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->onCreateBuilder(Landroid/os/Bundle;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mExtraDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mExtraDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method protected onNegativeButtonClick()V
    .locals 0

    return-void
.end method

.method protected onPositiveButtonClick()V
    .locals 0

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mExtraCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mExtraDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setOnNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mExtraNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setOnPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mExtraPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method protected supportNegativeButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected supportPositiveButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
