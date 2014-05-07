.class public Lcom/android/settings/SmsListPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "SmsListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SmsListPreference$SmsArrayAdapter;
    }
.end annotation


# instance fields
.field private mEntryDrawables:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method


# virtual methods
.method public getEntryDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/SmsListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 7
    .parameter "builder"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/SmsListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/SmsListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    .line 99
    .local v6, selectedIndex:I
    new-instance v0, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/SmsListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0400e6

    invoke-virtual {p0}, Lcom/android/settings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SmsListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;-><init>(Lcom/android/settings/SmsListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V

    .line 101
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-virtual {p1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 102
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 103
    return-void
.end method

.method public setEntryDrawables([Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "entries"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/SmsListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    .line 90
    return-void
.end method
