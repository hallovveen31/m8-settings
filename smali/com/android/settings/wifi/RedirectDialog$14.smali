.class Lcom/android/settings/wifi/RedirectDialog$14;
.super Ljava/lang/Object;
.source "RedirectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/RedirectDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/RedirectDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/RedirectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/settings/wifi/RedirectDialog$14;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog$14;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/RedirectDialog;->finish()V

    .line 319
    return-void
.end method
