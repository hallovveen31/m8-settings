.class Lcom/android/settings/SmartNSEnabler$12;
.super Ljava/lang/Thread;
.source "SmartNSEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartNSEnabler;->enableMirrorLink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmartNSEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/SmartNSEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/android/settings/SmartNSEnabler$12;->this$0:Lcom/android/settings/SmartNSEnabler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1312
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1314
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$12;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->enableNCM(Landroid/content/Context;Z)V

    .line 1315
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1317
    return-void
.end method
