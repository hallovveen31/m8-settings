.class Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$3;
.super Ljava/lang/Object;
.source "HtcTrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->showCertDialog(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

.field final synthetic val$certDialog:Landroid/app/Dialog;

.field final synthetic val$certHolder:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$3;->this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$3;->val$certHolder:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;

    iput-object p3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$3;->val$certDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$3;->this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c00b8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$3;->val$certHolder:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$3;->val$certHolder:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;

    #calls: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)I
    invoke-static {v2, v3}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->access$2500(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    const v2, 0x1040013

    new-instance v3, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$3$1;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$3$1;-><init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$3;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    const v2, 0x1040009

    new-instance v3, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$3$2;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$3$2;-><init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$3;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
