.class public Lcom/android/settingslib/wifi/AccessPointPreference;
.super Landroid/support/v7/preference/Preference;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/AccessPointPreference$1;,
        Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
    }
.end annotation


# static fields
.field private static final STATE_METERED:[I

.field private static final STATE_SECURED:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field private static final wifi_friction_attributes:[I


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private final mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private final mBadgePadding:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mForSavedNetworks:Z

.field private final mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field private mLevel:I

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mTitleView:Landroid/widget/TextView;

.field private mWifiBadge:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-array v0, v3, [I

    .line 43
    sget v1, Lcom/android/settingslib/R$attr;->state_encrypted:I

    aput v1, v0, v2

    .line 42
    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    .line 46
    new-array v0, v3, [I

    .line 47
    sget v1, Lcom/android/settingslib/R$attr;->state_metered:I

    aput v1, v0, v2

    .line 46
    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_METERED:[I

    .line 50
    new-array v0, v3, [I

    sget v1, Lcom/android/settingslib/R$attr;->wifi_friction:I

    aput v1, v0, v2

    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->wifi_friction_attributes:[I

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 66
    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_one_bar:I

    aput v1, v0, v2

    .line 67
    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_two_bars:I

    aput v1, v0, v3

    .line 68
    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_three_bars:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 69
    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_signal_full:I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 65
    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 63
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiBadge:I

    .line 270
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 75
    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 76
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    .line 77
    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 78
    return-void
.end method

.method private bindFrictionImage(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "frictionImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 180
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    if-nez v1, :cond_1

    .line 181
    :cond_0
    return-void

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 188
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 189
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    return-void

    .line 185
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isMetered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_METERED:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_0
.end method

.method private postNotifyChanged()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->postNotifyChanged(Landroid/widget/TextView;)V

    .line 261
    return-void
.end method

.method private postNotifyChanged(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "titleView"    # Landroid/widget/TextView;

    .prologue
    .line 264
    if-eqz p1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 267
    :cond_0
    return-void
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 2

    .prologue
    .line 247
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->postNotifyChanged()V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v4, 0x0

    .line 136
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 137
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v2, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 142
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 143
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 146
    :cond_1
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    .line 147
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 152
    :cond_2
    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 154
    sget v2, Lcom/android/settingslib/R$id;->friction_icon:I

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 155
    .local v1, "frictionImageView":Landroid/widget/ImageView;
    invoke-direct {p0, v1}, Lcom/android/settingslib/wifi/AccessPointPreference;->bindFrictionImage(Landroid/widget/ImageView;)V

    .line 156
    return-void
.end method
