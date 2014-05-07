.class Lcom/android/settings/applications/ManageApplications$2;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplications;->applySearchActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$2;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x42

    if-ne p2, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$2;->this$0:Lcom/android/settings/applications/ManageApplications;

    #calls: Lcom/android/settings/applications/ManageApplications;->switchToSearchContainer(Z)V
    invoke-static {v2, v1}, Lcom/android/settings/applications/ManageApplications;->access$000(Lcom/android/settings/applications/ManageApplications;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
