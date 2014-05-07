.class Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$2;
.super Ljava/lang/Object;
.source "HtcTrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$2;->this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
