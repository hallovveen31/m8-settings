.class Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$1;
.super Ljava/lang/Object;
.source "HtcTrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

.field final synthetic val$adapter:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$1;->this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$1;->val$adapter:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$1;->this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$1;->val$adapter:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;

    move-result-object v1

    #calls: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->showCertDialog(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->access$700(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)V

    .line 216
    return-void
.end method
