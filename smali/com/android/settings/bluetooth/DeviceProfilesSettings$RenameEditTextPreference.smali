.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenameEditTextPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$600(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/htc/preference/HtcEditTextPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v1, v0, Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/htc/widget/HtcAlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
