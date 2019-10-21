function tag = getDefaultTag( obj )
% GETDEFAULTTAG  Get default tag of nlsaDiffusionOperator_gl_mb objects
%
% Modified 2015/05/07

l = getBandwidthExponentLimit( obj );
tag = sprintf( 'alpha%1.2f_eps%1.2g_b%1.2g_lLim%1.2g-%1.2g_nL%i_nPhi%i', ...
                                               getAlpha( obj ), ...
                                               getEpsilon( obj ), ...
                                               getBandwidthBase( obj ), ...
                                               l( 1 ), l( 2 ), ...
                                               getNBandwidth( obj ), ...
                                               getNEigenfunction( obj ) );