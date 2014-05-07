.class Lcom/android/settings/RingerVolume$5;
.super Ljava/lang/Object;
.source "RingerVolume.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RingerVolume;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RingerVolume;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/RingerVolume;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/android/settings/RingerVolume$5;->this$0:Lcom/android/settings/RingerVolume;

    iput-object p2, p0, Lcom/android/settings/RingerVolume$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/settings/RingerVolume$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 1049
    return-void
.end method
