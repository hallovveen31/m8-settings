.class Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$3;
.super Ljava/lang/Object;
.source "HtcUsbStorageMountTogglePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$3;->this$0:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$3;->this$0:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->doUnmountOperation(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->access$300(Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;Z)V

    .line 255
    return-void
.end method