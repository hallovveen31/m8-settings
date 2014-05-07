.class Lcom/android/settings/LocalePickerSetupWizard$2;
.super Ljava/lang/Object;
.source "LocalePickerSetupWizard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LocalePickerSetupWizard;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocalePickerSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings/LocalePickerSetupWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/settings/LocalePickerSetupWizard$2;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 377
    const-string v0, "OOBE_LocalePickerSetupWizard"

    const-string v1, "recreate"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard$2;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    invoke-virtual {v0}, Lcom/android/settings/LocalePickerSetupWizard;->recreate()V

    .line 379
    return-void
.end method
