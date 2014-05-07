.class Lcom/android/settings/SettingsLicenseActivity$1;
.super Ljava/lang/Object;
.source "SettingsLicenseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsLicenseActivity;->showProgressDialogAndLoadLicenses()V
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
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/settings/SettingsLicenseActivity$1;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity$1;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsLicenseActivity;->loadLicenses()V

    .line 225
    return-void
.end method
