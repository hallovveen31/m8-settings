.class Lcom/android/settings/framework/app/DisplayResolutionDialog$1;
.super Ljava/lang/Object;
.source "DisplayResolutionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/app/DisplayResolutionDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/DisplayResolutionDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/DisplayResolutionDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog$1;->this$0:Lcom/android/settings/framework/app/DisplayResolutionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog$1;->this$0:Lcom/android/settings/framework/app/DisplayResolutionDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog$1;->this$0:Lcom/android/settings/framework/app/DisplayResolutionDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
