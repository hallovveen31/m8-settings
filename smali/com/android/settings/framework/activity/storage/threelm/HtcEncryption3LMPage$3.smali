.class Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$3;
.super Ljava/lang/Object;
.source "HtcEncryption3LMPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getCancelButton()Lcom/htc/widget/HtcFooterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$3;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    iput-object p2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 240
    return-void
.end method
