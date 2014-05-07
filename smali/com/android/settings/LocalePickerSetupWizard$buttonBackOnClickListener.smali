.class Lcom/android/settings/LocalePickerSetupWizard$buttonBackOnClickListener;
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
    name = "buttonBackOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocalePickerSetupWizard;


# direct methods
.method private constructor <init>(Lcom/android/settings/LocalePickerSetupWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonBackOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/LocalePickerSetupWizard;Lcom/android/settings/LocalePickerSetupWizard$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/android/settings/LocalePickerSetupWizard$buttonBackOnClickListener;-><init>(Lcom/android/settings/LocalePickerSetupWizard;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 354
    const-string v0, "OOBE_LocalePickerSetupWizard"

    const-string v1, " BtnBack clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonBackOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePickerSetupWizard;->setResult(I)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonBackOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    invoke-virtual {v0}, Lcom/android/settings/LocalePickerSetupWizard;->finish()V

    .line 357
    return-void
.end method
