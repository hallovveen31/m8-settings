.class Lcom/android/settings/ApnPreference$1;
.super Ljava/lang/Object;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/ApnPreference$1;->this$0:Lcom/android/settings/ApnPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/settings/ApnPreference$1;->this$0:Lcom/android/settings/ApnPreference;

    invoke-virtual {v1}, Lcom/android/settings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    .local v0, context:Landroid/content/Context;
    instance-of v1, v0, Lcom/android/settings/ApnSettings;

    if-eqz v1, :cond_1

    .line 86
    check-cast v0, Lcom/android/settings/ApnSettings;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Lcom/android/settings/ApnSettings;->resetTextViewsFocused()V

    .line 93
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 87
    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    instance-of v1, v0, Lcom/android/settings/CdmaApnSettings;

    if-eqz v1, :cond_2

    .line 88
    check-cast v0, Lcom/android/settings/CdmaApnSettings;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Lcom/android/settings/CdmaApnSettings;->resetTextViewsFocused()V

    goto :goto_0

    .line 89
    .restart local v0       #context:Landroid/content/Context;
    :cond_2
    instance-of v1, v0, Lcom/android/settings/CdmaApnGroupSettings;

    if-eqz v1, :cond_0

    .line 90
    check-cast v0, Lcom/android/settings/CdmaApnGroupSettings;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Lcom/android/settings/CdmaApnGroupSettings;->resetTextViewsFocused()V

    goto :goto_0
.end method
