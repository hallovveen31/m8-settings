.class Lcom/android/settings/DreamSettings$6$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DreamSettings$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DreamSettings$6;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamSettings$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DreamSettings$6$1;->this$1:Lcom/android/settings/DreamSettings$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DreamSettings$6$1;->this$1:Lcom/android/settings/DreamSettings$6;

    iget-object v0, v0, Lcom/android/settings/DreamSettings$6;->this$0:Lcom/android/settings/DreamSettings;

    #getter for: Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;
    invoke-static {v0}, Lcom/android/settings/DreamSettings;->access$200(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/DreamBackend;->startDreaming()V

    return-void
.end method
