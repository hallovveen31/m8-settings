.class Lcom/android/settings/LocalePickerSetupWizard$buttonEmergencyOnClickListener;
.super Ljava/lang/Object;
.source "LocalePickerSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LocalePickerSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "buttonEmergencyOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocalePickerSetupWizard;


# direct methods
.method private constructor <init>(Lcom/android/settings/LocalePickerSetupWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonEmergencyOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/LocalePickerSetupWizard;Lcom/android/settings/LocalePickerSetupWizard$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/android/settings/LocalePickerSetupWizard$buttonEmergencyOnClickListener;-><init>(Lcom/android/settings/LocalePickerSetupWizard;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 362
    const-string v0, "OOBE_LocalePickerSetupWizard"

    const-string v1, " BtnEmergency clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonEmergencyOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    #calls: Lcom/android/settings/LocalePickerSetupWizard;->showEmergencyDial()V
    invoke-static {v0}, Lcom/android/settings/LocalePickerSetupWizard;->access$900(Lcom/android/settings/LocalePickerSetupWizard;)V

    .line 364
    return-void
.end method
