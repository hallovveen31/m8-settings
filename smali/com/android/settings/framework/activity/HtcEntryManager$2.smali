.class final Lcom/android/settings/framework/activity/HtcEntryManager$2;
.super Ljava/lang/Object;
.source "HtcEntryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/HtcEntryManager;->refresh(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/HtcEntryManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcEntryManager$2;->val$context:Landroid/content/Context;

    #calls: Lcom/android/settings/framework/activity/HtcEntryManager;->onRefresh(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/settings/framework/activity/HtcEntryManager;->access$400(Landroid/content/Context;)V

    return-void
.end method
