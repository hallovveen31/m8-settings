.class Lcom/android/settings/SettingsLicenseActivity$2;
.super Landroid/webkit/WebViewClient;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsLicenseActivity;->loadLicenses()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsLicenseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsLicenseActivity$2;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0xfa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity$2;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    #calls: Lcom/android/settings/SettingsLicenseActivity;->showWebView()V
    invoke-static {v0}, Lcom/android/settings/SettingsLicenseActivity;->access$000(Lcom/android/settings/SettingsLicenseActivity;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
