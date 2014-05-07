.class Lcom/android/settings/wifi/LanInfo$2;
.super Ljava/lang/Object;
.source "LanInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/LanInfo;->initBackSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/LanInfo;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/LanInfo;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings/wifi/LanInfo$2;->this$0:Lcom/android/settings/wifi/LanInfo;

    iput-object p2, p0, Lcom/android/settings/wifi/LanInfo$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/LanInfo$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 153
    return-void
.end method
