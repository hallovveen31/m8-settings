.class Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$1;
.super Ljava/lang/Object;
.source "VzwStorageBackupAssistant.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->onInitializeInBackground(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$1;->this$0:Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$1;->this$0:Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->doBindServiceInBackground()V

    return-void
.end method
