.class Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl$1;
.super Ljava/lang/Object;
.source "HtcEntryProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl$1;->this$0:Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl$1;->this$0:Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;

    #calls: Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->startInBackground()V
    invoke-static {v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->access$000(Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;)V

    .line 66
    return-void
.end method