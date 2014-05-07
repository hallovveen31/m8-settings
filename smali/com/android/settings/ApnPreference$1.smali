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

    iput-object p1, p0, Lcom/android/settings/ApnPreference$1;->this$0:Lcom/android/settings/ApnPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/settings/ApnPreference$1;->this$0:Lcom/android/settings/ApnPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settings/ApnSettings;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/settings/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/ApnSettings;->resetTextViewsFocused()V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_1
    instance-of v1, v0, Lcom/android/settings/CdmaApnSettings;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/settings/CdmaApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/CdmaApnSettings;->resetTextViewsFocused()V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/android/settings/CdmaApnGroupSettings;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settings/CdmaApnGroupSettings;

    invoke-virtual {v0}, Lcom/android/settings/CdmaApnGroupSettings;->resetTextViewsFocused()V

    goto :goto_0
.end method
