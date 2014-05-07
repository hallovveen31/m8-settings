.class Lcom/android/settings/bluetooth/BluetoothPermissionActivity$3;
.super Ljava/lang/Object;
.source "BluetoothPermissionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createCheckbox()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$3;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$3;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    #getter for: Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoice:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->access$400(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)Lcom/htc/widget/HtcCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->performClick()Z

    .line 194
    return-void
.end method
