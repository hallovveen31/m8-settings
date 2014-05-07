.class Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference$1;
.super Ljava/lang/Object;
.source "HtcExternalSdCardMountTogglePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->updateSummary()V
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
    .line 112
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference$1;->this$0:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference$1;->this$0:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    #calls: Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->updateSummaryInForeground()V
    invoke-static {v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->access$000(Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;)V

    .line 117
    return-void
.end method
