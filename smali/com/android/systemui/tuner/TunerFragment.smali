.class public Lcom/android/systemui/tuner/TunerFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "TunerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;
    }
.end annotation


# static fields
.field private static final DEBUG_ONLY:[Ljava/lang/String;

.field private static final KEY_DOZE:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const-string/jumbo v0, "doze"

    sput-object v0, Lcom/android/systemui/tuner/TunerFragment;->KEY_DOZE:Ljava/lang/CharSequence;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "nav_bar"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "lockscreen"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "picture_in_picture"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 55
    sput-object v0, Lcom/android/systemui/tuner/TunerFragment;->DEBUG_ONLY:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private alwaysOnAvailable()Z
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 74
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerFragment;->setHasOptionsMenu(Z)V

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 133
    const/4 v0, 0x2

    const v1, 0x7f110432

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 134
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 78
    const v3, 0x7f150006

    invoke-virtual {p0, v3}, Lcom/android/systemui/tuner/TunerFragment;->addPreferencesFromResource(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/plugins/PluginPrefs;->hasPlugins(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v4, "plugins"

    invoke-virtual {p0, v4}, Lcom/android/systemui/tuner/TunerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerFragment;->alwaysOnAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/tuner/TunerFragment;->KEY_DOZE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/android/systemui/tuner/TunerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "android.hardware.nfc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 88
    const-string/jumbo v3, "status_bar"

    invoke-virtual {p0, v3}, Lcom/android/systemui/tuner/TunerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 90
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    instance-of v3, v2, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 91
    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    .line 92
    .local v1, "prefStatusBar":Landroid/support/v7/preference/PreferenceScreen;
    const-string/jumbo v3, "nfc"

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 97
    .end local v1    # "prefStatusBar":Landroid/support/v7/preference/PreferenceScreen;
    .end local v2    # "preference":Landroid/support/v7/preference/Preference;
    :cond_2
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v3, :cond_4

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/android/systemui/tuner/TunerFragment;->DEBUG_ONLY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 99
    sget-object v3, Lcom/android/systemui/tuner/TunerFragment;->DEBUG_ONLY:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/android/systemui/tuner/TunerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 100
    .restart local v2    # "preference":Landroid/support/v7/preference/Preference;
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 98
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    .end local v2    # "preference":Landroid/support/v7/preference/Preference;
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "seen_tuner_warning"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_5

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "tuner_warning"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_5

    .line 107
    new-instance v3, Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;

    invoke-direct {v3}, Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "tuner_warning"

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 110
    :cond_5
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 158
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 140
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 141
    return v2

    .line 143
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/tuner/TunerFragment$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/tuner/TunerFragment$1;-><init>(Lcom/android/systemui/tuner/TunerFragment;)V

    invoke-static {v0, v1}, Lcom/android/systemui/tuner/TunerService;->showResetRequest(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 156
    return v2

    .line 138
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 126
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onPause()V

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 129
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onResume()V

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1104b3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 122
    return-void
.end method
