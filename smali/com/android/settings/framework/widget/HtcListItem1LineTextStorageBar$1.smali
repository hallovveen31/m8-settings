.class Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$1;
.super Ljava/lang/Object;
.source "HtcListItem1LineTextStorageBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->onGetTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$1;->this$0:Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;

    iput-object p2, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$1;->this$0:Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;

    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->setStampText(Ljava/lang/String;)V

    return-void
.end method
