.class Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference$2;
.super Ljava/lang/Object;
.source "HtcExternalSdCardMountTogglePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference$2;->this$0:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference$2;->this$0:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->doUnmountOperation(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->access$100(Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;Z)V

    .line 283
    return-void
.end method